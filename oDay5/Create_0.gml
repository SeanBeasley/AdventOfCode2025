/// @description Insert description here
// You can write your code in this editor

var wd = working_directory;
var file = file_text_open_read("test.txt");
var i = 0;
var isFresh = true;
while (!file_text_eof(file))
{
    var line = file_text_readln(file);
	var trimmed = string_trim(line);
	if (string_length(trimmed) == 0)
	{
		isFresh = false;
		i = 0;
	}
	else if (isFresh)
	{
		Fresh[i] = trimmed;
	}
	else
	{
		Check[i] = trimmed;
	}
	
	i++
}
file_text_close(file);

Size = array_length(Fresh);
Current = 0;
Sum1 = 0;
Sum2 = 0;
Value1 = 0;
Value2 = 0;

Display = "";

IsPartTwo = true;

array_sort(Fresh, function(elm1, elm2)
{
	var split1 = string_split(elm1, "-");
	var split2 = string_split(elm2, "-");
	var first1 = real(split1[0]);
	var first2 = real(split2[0]);
	var v = 0;
	if (first1 < first2) v = -1;
	else if (first1 > first2) v = 1;
    return v;
});