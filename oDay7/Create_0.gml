/// @description Insert description here
// You can write your code in this editor

var wd = working_directory;
var file = file_text_open_read("Input7.txt");
var i = 0;
var isFresh = true;
while (!file_text_eof(file))
{
    var line = file_text_readln(file);
	var trimmed = string_trim(line);
	Rows[i] = trimmed;
	
	i++
}
file_text_close(file);

Size = array_length(Rows);
Current = 0;
Sum1 = 0;
Sum2 = 0;
Value1 = 0;
Value2 = 0;

Display = "";

IsPartTwo = false;

Beams1 = array_create(string_length(Rows[0]), 0);
Beams2 = array_create(string_length(Rows[0]), 0);