/// @description Insert description here
// You can write your code in this editor

if (Current < Size)
{
	if (IsPartTwo)
	{		
		Value2 = 0;
		Display = Rows[Current];
		var rowLength = string_length(Display);
		for (var i = 1; i <= rowLength; i++)
		{
			var space = string_char_at(Display, i);
			
			if (space == "^")
			{
				var timeLines = Beams2[i-1];
				if (timeLines > 0)
				{
					Beams2[i-1] = 0;
					Sum2 -= timeLines;
					if (i > 1)
					{
						Beams2[i-2] += timeLines;
						Sum2 += timeLines;
					}
					if (i < rowLength)
					{
						Beams2[i] += timeLines;
						Sum2 += timeLines;
					}
				}
			}
			else if (space == "S")
			{
				Beams2[i-1] = 1;
				Sum2 = 1;
			}
		}
		Display = Rows[Current];
	}
	else
	{
		Value1 = 0;
		Display = Rows[Current];
		var rowLength = string_length(Display);
		for (var i = 1; i <= rowLength; i++)
		{
			var space = string_char_at(Display, i);
			
			if (space == "^")
			{
				if (Beams1[i-1] == 1)
				{
					Sum1++;
					Beams1[i-1] = 0;
					if (i > 1)
					{
						Beams1[i-2] = 1;
					}
					if (i < rowLength)
					{
						Beams1[i] = 1;
					}
				}
			}
			else if (space == "S")
			{
				Beams1[i-1] = 1;
			}
		}
		Display = Rows[Current];
	}
	
	Current++;
}
else if (!IsPartTwo)
{
	IsPartTwo = true;
	Current = 0;
	Value1 = 0;
}

//
//