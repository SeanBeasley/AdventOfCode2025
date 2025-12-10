/// @description Insert description here
// You can write your code in this editor

var wd = working_directory;
var file = file_text_open_read("Input6.txt");
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

Operator = Rows[Size-1];
Operators = string_split(Operator, " ", true);
CurrentOperator = "";

var oLength = array_length(Operators);
Solutions = array_create(oLength, 0);
for(var j = 0; j < oLength; j++)
{
	if (Operators[j] == "*")
	{
		Solutions[j] = 1;
	}
}