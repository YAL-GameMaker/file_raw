
var f = file_raw_open("file.bin", "wb");
//file_raw_write_chars(f, "bok bok bok!");
var i = $12345678;
i = (i << 32) | i;
file_raw_write_s64(f, i);
file_raw_close(f);

f = file_raw_open("file.bin", "rb");
var k = file_raw_read_s64(f);
trace(k, i, k == i);
trace(file_raw_read_u8(f));
file_raw_close(f);