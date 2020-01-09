/// @author YellowAfterlife

#include "stdafx.h"
#include <stdio.h>
#include <vector>
#include <stdint.h>
#ifdef WIN32
#include <shlwapi.h>
#pragma comment(lib, "shlwapi.lib")
#endif

#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default"))) 
#else
#define dllx extern "C"
#endif

typedef float float32_t;
typedef double float64_t;

#define trace(...) { printf("[file_raw:%d] ", __LINE__); printf(__VA_ARGS__); printf("\n"); fflush(stdout); }
#define tracew(...) { wprintf(L"[file_raw:%d] ", __LINE__); printf(__VA_ARGS__); printf("\n"); fflush(stdout); }

struct file_raw_t {
	FILE* file;
	bool active;
};
std::vector<file_raw_t> file_raw_vec;
inline FILE* file_raw_find(double rawfile_ind) {
	int i = (int)rawfile_ind;
	if (i >= 0 && (size_t)i < file_raw_vec.size() && file_raw_vec[i].active) {
		return file_raw_vec[i].file;
	} else return 0;
}

template<typename T> struct file_raw_buf {
private:
	size_t capacity = 0;
public:
	T* arr = 0;
	file_raw_buf() {}
	bool prepare(size_t nsize, const char* intent) {
		if (capacity < nsize) {
			auto b = realloc(arr, nsize * sizeof(T));
			if (b) {
				arr = (T*)b;
				capacity = nsize;
			} else {
				trace("Failed to realloc %d bytes for %s", nsize * sizeof(T), intent);
				return false;
			}
		}
		return true;
	}
	bool set(const T* val, size_t size) {
		if (prepare(size)) {
			memcpy(arr, val, sizeof(T) * size);
			return true;
		} else return false;
	}
};
#ifdef WIN32
struct file_raw_widen {
	file_raw_buf<WCHAR> buf;
	LPCWSTR proc(const char* val, const char* intent) {
		auto want = MultiByteToWideChar(CP_UTF8, 0, val, -1, buf.arr, 0);
		if (!buf.prepare(want, intent)) return 0;
		MultiByteToWideChar(CP_UTF8, 0, val, -1, buf.arr, want);
		return buf.arr;
	}
};
#endif

#ifdef WIN32
const wchar_t* file_raw_dir = L"";
#else
const char* file_raw_dir = "";
#endif
size_t file_raw_dir_len = 0;
dllx double file_raw_init_impl(const char* saveDir) {
	#ifdef WIN32
	static file_raw_widen b;
	auto s = b.proc(saveDir, "file_raw_init_impl");
	if (s) {
		file_raw_dir = s;
		file_raw_dir_len = wcslen(s);
	}
	#else
	static file_raw_buf<char> b;
	if (b.set(saveDir, strlen(saveDir) + 1)) {
		file_raw_dir = b.arr;
		file_raw_dir_len = strlen(saveDir);
	}
	#endif
	return 1;
}

/// Returns whether the DLL loaded alright
dllx double file_raw_is_available() {
	return true;
}

///
dllx double file_raw_open(const char* path, const char* mode_str) {
	FILE* file;
	#ifdef WIN32
	static file_raw_widen pathWiden, modeWiden;
	auto wideMode = modeWiden.proc(mode_str, "file_raw_open mode");
	LPCWSTR widePath = pathWiden.proc(path, "file_raw_open path");
	LPCWSTR fullPath = widePath;
	if (PathIsRelativeW(widePath)) {
		static file_raw_buf<wchar_t> b;
		b.prepare(wcslen(widePath) + file_raw_dir_len + 1, "file_raw_open concat");
		wcscpy(b.arr, file_raw_dir);
		wcscat(b.arr, widePath);
		fullPath = b.arr;
	}
	file = _wfopen(fullPath, wideMode);
	#else
	auto fullPath = path;
	if (path[0] == '/') {
		static file_raw_buf<char> b;
		b.prepare(strlen(path) + file_raw_dir_len + 1, "file_raw_open concat");
		strcpy(b.arr, file_raw_dir);
		strcat(b.arr, path);
	}
	file = fopen(fullPath, mode_str);
	#endif
	if (!file) return -1;
	for (size_t i = 0; i < file_raw_vec.size(); i++) {
		auto& el = file_raw_vec[i];
		if (el.active) continue;
		el.active = true;
		el.file = file;
		return i;
	}
	//
	file_raw_t el;
	el.file = file;
	el.active = true;
	file_raw_vec.push_back(el);
	return file_raw_vec.size() - 1;
}

///
dllx double file_raw_close(double rawfile_ind) {
	int i = (int)rawfile_ind;
	if (i < 0 || (size_t)i >= file_raw_vec.size()) return 0;
	auto& el = file_raw_vec[i];
	if (!el.active) return 0;
	fclose(el.file);
	el.file = 0;
	el.active = false;
	return 1;
}

///
dllx double file_raw_exists(double rawfile_ind) {
	return file_raw_find(rawfile_ind) != 0;
}

///
dllx double file_raw_flush(double rawfile_ind) {
	auto q = file_raw_find(rawfile_ind);
	return q ? fflush(q) == 0 : 0;
}

///
dllx double file_raw_rewind(double rawfile_ind) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return 0;
	rewind(q);
	return 1;
}

///
enum file_raw_seek_t {
	file_raw_seek_start = 0,
	file_raw_seek_relative = 1,
	file_raw_seek_end = 2,
};
///
dllx double file_raw_seek(double rawfile_ind, double origin, double pos) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return 0;
	return fseek(q, (int)pos, (int)origin) == 0;
}

///
dllx double file_raw_tell(double rawfile_ind) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return -1;
	return ftell(q);
}

///
dllx double file_raw_eof(double rawfile_ind) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return -1;
	return feof(q) != 0;
}

#pragma region primitives
#define file_raw_write_prim(type) {\
	auto q = file_raw_find(rawfile_ind);\
	if (!q) return 0;\
	auto v = (type)val;\
	return !fwrite(&v, sizeof v, 1, q);\
}
#define file_raw_read_prim(type) {\
	auto q = file_raw_find(rawfile_ind);\
	if (!q) return -1;\
	type r;\
	return fread(&r, sizeof r, 1, q) >= sizeof(r) ? r : -1;\
}

///
dllx double file_raw_write_u8(double rawfile_ind, double val) file_raw_write_prim(uint8_t);
///
dllx double file_raw_read_u8(double rawfile_ind) file_raw_read_prim(uint8_t);

///
dllx double file_raw_write_s8(double rawfile_ind, double val) file_raw_write_prim(int8_t);
///
dllx double file_raw_read_s8(double rawfile_ind) file_raw_read_prim(int8_t);

///
dllx double file_raw_write_u16(double rawfile_ind, double val) file_raw_write_prim(uint16_t);
///
dllx double file_raw_read_u16(double rawfile_ind) file_raw_read_prim(uint16_t);

///
dllx double file_raw_write_s16(double rawfile_ind, double val) file_raw_write_prim(int16_t);
///
dllx double file_raw_read_s16(double rawfile_ind) file_raw_read_prim(int16_t);

///
dllx double file_raw_write_u32(double rawfile_ind, double val) file_raw_write_prim(uint32_t);
///
dllx double file_raw_read_u32(double rawfile_ind) file_raw_read_prim(uint32_t);

///
dllx double file_raw_write_s32(double rawfile_ind, double val) file_raw_write_prim(int32_t);
///
dllx double file_raw_read_s32(double rawfile_ind) file_raw_read_prim(int32_t);

///
dllx double file_raw_write_f32(double rawfile_ind, double val) file_raw_write_prim(float32_t);
///
dllx double file_raw_read_f32(double rawfile_ind) file_raw_read_prim(float32_t);

///
dllx double file_raw_write_f64(double rawfile_ind, double val) file_raw_write_prim(float64_t);
///
dllx double file_raw_read_f64(double rawfile_ind) file_raw_read_prim(float64_t);

dllx double file_raw_write_s64_impl(double rawfile_ind, int64_t* val) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return 0;
	fwrite(val, sizeof(int64_t), 1, q);
	return 1;
}
dllx double file_raw_read_s64_impl(double rawfile_ind, int64_t* result) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return 0;
	if (!fread(result, sizeof(int64_t), 1, q)) result[0] = 0;
	return 1;
}

#pragma endregion

///
dllx double file_raw_write_string(double rawfile_ind, const char* val) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return 0;
	auto l = strlen(val);
	fwrite(val, sizeof(char), l + 1, q);
}

///
dllx const char* file_raw_read_string(double rawfile_ind) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return "";
	static char* buf = 0;
	static int bufSize = 0;
	int n = 0;
	char c;
	while (!feof(q)) {
		if (fread(&c, 1, 1, q) == 0) c = 0;
		if (n >= bufSize) {
			auto ns = (n + 1) << 1;
			auto b = realloc(buf, ns);
			if (!b) {
				trace("Failed to realloc %d bytes for file_raw_read_string", ns);
				if (buf && n > 0) {
					buf[n - 1] = 0;
					return buf;
				} else return "";
			}
			buf = (char*)b;
			bufSize = ns;
		}
		buf[n++] = c;
		if (c == 0) break;
	}
	//
	return buf;
}

///
dllx double file_raw_write_chars(double rawfile_ind, const char* val) {
	auto q = file_raw_find(rawfile_ind);
	if (!q) return 0;
	auto l = strlen(val);
	fwrite(val, sizeof(char), l, q);
}

///
dllx const char* file_raw_read_chars(double rawfile_ind, double count) {
	auto q = file_raw_find(rawfile_ind);
	if (!q || count <= 0) return "";
	size_t num = (size_t)count;
	static char* buf = 0;
	static size_t bufSize = 0;
	if (!buf || bufSize <= num) {
		auto b = realloc(buf, num + 1);
		if (!b) {
			trace("Failed to realloc %d bytes for file_raw_read_string", (num + 1));
			return "";
		} else {
			buf = (char*)b;
			bufSize = num + 1;
		}
	}
	auto found = fread(buf, 1, num, q);
	buf[found] = 0;
	return buf;
}

dllx double file_raw_write_buffer_impl(double rawfile_ind, char* buf, double pos, double len) {
	auto q = file_raw_find(rawfile_ind);
	if (!q || len < 0) return 0;
	auto l = (size_t)len;
	return fwrite(buf + (int)pos, 1, l, q) >= l;
}

dllx double file_raw_read_buffer_impl(double rawfile_ind, char* buf, double pos, double len) {
	auto q = file_raw_find(rawfile_ind);
	if (!q || len < 0) return 0;
	auto l = (size_t)len;
	return fread(buf + (int)pos, 1, l, q) >= l;
}
