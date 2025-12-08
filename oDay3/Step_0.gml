/// @description Insert description here
// You can write your code in this editor

if (Current < Size)
{
	if (Current == Size - 1)
	{
		var check = true;
	}
	Display = Banks[Current];
	
	Value1 = 0;	
	Value2 = 0;	
	
	for(var i = 9; i > 1; i--)
	{
		for (var j = 9; j > 1; j--)
		{
			var first = string(i);
			var second = string(j);
		
			var firstPos = string_pos(first, Display);
			if (firstPos != 0 && firstPos != string_length(Display))
			{
				var secondPos = string_pos_ext(second, Display, firstPos+1);
				if (secondPos != 0 && i > Value1)
				{
					Value1 = i*10 + j;
				}
			}
		}
	}
	
	var bankSize = string_length(Display)-2;
	var batteries = array_create(bankSize, 0);
	for(var i = 0; i < bankSize; i++)
	{
		 batteries[i] = real(string_char_at(Display,i+1));
	}
	
	var selected = array_create(12, 0);
	for (var j = 0; j < 12; j++)
	{
		var firstIndex = bankSize-12+j;
		var indexFloor = 0;
		if (j > 0)
		{
			indexFloor = selected[j-1]+1;
		}
		var highest = 0;
		for(var k = firstIndex; k >= indexFloor; k--)
		{
			var battery = batteries[k];
			if (battery >= highest)
			{
				highest = battery;
				selected[j] = k;
			}
		}		
		Value2 += highest * power(10, 11-j);
	}
	
	
	Sum1 += Value1;
	Sum2 += Value2;
	Current++;
}

//16973
//168027167146027