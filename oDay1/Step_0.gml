/// @description Insert description here
// You can write your code in this editor

if (Current < Size)
{
	Display = Moves[Current];
	var distance = string_copy(Display, 2, string_length(Display)-3);	
	if (string_char_at(Display, 1) == "R")
	{
		Value += real(distance);
	}
	else
	{
		Value -= real(distance);
	}
	
	if (Value % 100 == 0)
	{
		Hits++;
	}
	
	
	Current++;
}
//56