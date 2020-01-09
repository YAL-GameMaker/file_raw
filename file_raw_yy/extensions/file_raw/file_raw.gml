#define file_raw_init
global.g_file_raw_buf = buffer_create(8, buffer_fixed, 1);
var l_dir = game_save_id;
if (!directory_exists(l_dir)) directory_create(l_dir);
switch (string_ord_at(l_dir, string_length(l_dir))) {
	case 47: case 92: // `/`, `\`
		break;
	default: l_dir += "/";
}
file_raw_init_impl(l_dir);

#define file_raw_write_buffer
/// (rawfile_ind, buffer, offset, length)
return file_raw_write_buffer_impl(buffer_get_address(argument0), argument1, argument2, argument3);

#define file_raw_read_buffer
/// (rawfile_ind, buffer, offset, length)
return file_raw_read_buffer_impl(buffer_get_address(argument0), argument1, argument2, argument3);

#define file_raw_write_s64
/// (rawfile_ind, val)
buffer_poke(global.g_file_raw_buf, 0, buffer_u64, argument1);
file_raw_write_s64_impl(argument0, buffer_get_address(global.g_file_raw_buf));

#define file_raw_read_s64
/// (rawfile_ind)
file_raw_read_s64_impl(argument0, buffer_get_address(global.g_file_raw_buf))
return buffer_peek(global.g_file_raw_buf, 0, buffer_u64);
