/// @description Insert description here
// You can write your code in this editor

var wd = working_directory;
var file = file_text_open_read("Input4.txt");
var i = 0;
while (!file_text_eof(file))
{
    Rows[i] = file_text_readln(file);
	i++
}
file_text_close(file);

Size = i;
Current = 0;
Sum1 = 0;
Sum2 = 0;
Value1 = 0;
Value2 = 0;
PassValue2 = 0;

Up = "";
Display = "";
Down = "";

IsPart2 = false;