/// @description Insert description here
// You can write your code in this editor

if (Current < Size)
{
	Display = Moves[Current];
	var distance = string_copy(Display, 2, string_length(Display)-3);
	var realDistance = real(distance);
	if (string_char_at(Display, 1) == "L")
	{
		realDistance = -realDistance;		
	}
	var extraHits = 0;
	//50 + 50 = 100 -> 1
	//50 + 150 = 200 -> 2
	//50 + 149 = 199 -> 1
	//50 + 151 = 201 -> 2
	//50 - 50 = 0 ->  1
	//50 - 150 = -100 -> 2
	//50 - 149 = -99 -> 1
	//50 - 151 = -101 -> 2
	
	var fullRotations = floor(abs(realDistance) / 100);
	
	var newValue = Value + realDistance;
	
	if (realDistance > 99)
	{
		newValue -= fullRotations * 100;
	}
	else if (realDistance < 0)
	{
		newValue += fullRotations * 100;
	}
	
	if (newValue > 99)
	{
		extraHits = floor(newValue / 100);
		fullRotations++;
	}
	else if (newValue <= 0)
	{
		extraHits = abs(floor((newValue-1) / 100));
		fullRotations++;
	}
	
	if (extraHits > 1)
	{
		var check = 0;
	}
	
	var newPosition = newValue % 100;
	if (newPosition < 0)
	{
		newPosition += 100;
	}
	Value = newPosition;
		
	if (newPosition % 100 == 0)
	{
		Hits++;	
	}
	
	MoreHits += fullRotations;	
	
	Current++;
}
//1120
//6674 - too high
//5989 too low