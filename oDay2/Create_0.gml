/// @description Insert description here
// You can write your code in this editor

var wd = working_directory;
var file = file_text_open_read("Input2.txt");

var input = file_text_read_string(file);
file_text_close(file);

Ranges = string_split(input, ",");


Size = array_length(Ranges);
Current = 0;

Sum1 = 0;
Sum2 = 0;

Display = "";