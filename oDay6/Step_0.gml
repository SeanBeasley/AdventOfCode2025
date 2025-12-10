/// @description Insert description here
// You can write your code in this editor

if (Current <= Size + 1)
{
	if (IsPartTwo)
	{
		if (Current > Size)
		{
			if (CurrentOperator == "+")
			{
				Value1 += Value2;
				Value2 = 0;
			}
			else
			{
				Value1 *= Value2;
				Value2 = 0;
			}
		}
		else
		{
			Value2 = 0;
			var columns = array_length(Rows);
			for (var i = 0; i < columns; i++)
			{
				var digit = string_char_at(Rows[i], Current);
				var realDigit = 0;
			
				//New operator
				if (i == columns - 1 && digit != " ")
				{
					Sum2 += Value1;
					CurrentOperator = digit;
					Value1 = Value2;
				}
				//end of number
				else if (i == columns - 1)
				{
					if (CurrentOperator == "+")
					{
						Value1 += Value2;
						Value2 = 0;
					}
					else
					{
						Value1 *= Value2;
						Value2 = 0;
					}
				}
				//middle of number
				else if (digit != " ")
				{
					Value2 += power(10, columns-i-2) * real(digit);
				}
			}
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
//6470571 - tool ow