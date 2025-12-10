/// @description Insert description here
// You can write your code in this editor

if (Current <= Size)
{
	if (IsPartTwo)
	{					
		Value2 = 0;
		var rowCount = array_length(Rows);
		for (var i = 0; i < rowCount; i++)
		{
			var digit = string_char_at(Rows[i], Current);
			var realDigit = 0;					
						
			//middle of number
			if (i < rowCount - 1 && digit != " ")
			{
				Value2 = Value2 * 10 + real(digit);
			}
			//New operator
			else if (digit == "+" || digit == "*")
			{
				CurrentOperator = digit;
						
				Value1 = 0;
				if (digit == "*")
				{
					Value1 = 1;
				}
			}	
		}
		
		//End of Number column
		if (Value2 != 0)
		{
			if (CurrentOperator == "+")
			{
				Value1 += Value2;
			}
			else
			{
				Value1 *= Value2;
			}
		}
		
		//End of set
		if (Value2 == 0 || Current == Size)
		{
			Sum2 += Value1;
		}
	}
	else if (Current < Size-1)
	{
		Value1 = 0;
		Display = Rows[Current];
		var row = string_split(Display, " ", true);
		var rowLength = array_length(Solutions);
		for (var i = 0; i < rowLength; i++)
		{
			var value = real(row[i]);
			var current = Solutions[i];
			if (Operators[i] == "+")
			{
				current += value;
			}
			else
			{
				current *= value;
			}
			Solutions[i] = current;
			Value1 += current;
			
			if (i == 0)
			{
				var test = current;
			}
		}
		Sum1 = Value1;
		Display = Rows[Current];
	}
	
	Current++;
}
else if (!IsPartTwo)
{
	IsPartTwo = true;
	Current = 1;
	Size = string_length(Rows[0]);
	Value1 = 0;
}

//5733696195703
//10951882745757 - too low