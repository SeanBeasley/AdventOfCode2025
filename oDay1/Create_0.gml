/// @description Insert description here
// You can write your code in this editor

var wd = working_directory;
var file = file_text_open_read("Input1.txt");
var i = 0;
while (!file_text_eof(file))
{
    Moves[i] = file_text_readln(file);
	i++
}
file_text_close(file);

Size = i;
Current = 0;
Value = 50;
Hits = 0;

Display = "";