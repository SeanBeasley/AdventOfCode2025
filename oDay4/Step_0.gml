/// @description Insert description here
// You can write your code in this editor

if (Current < Size)
{
	if (IsPart2)
	{	
		Value2 = 0;	
	
		Display = Rows[Current];
		Up = "";
		Down = "";
	
		var mcolumns = string_length(Display)-1;
		var ucolumns = 0;
		var dcolumns = 0;
	
		if (Current > 0)
		{
			Up = Rows[Current-1];
			ucolumns = string_length(Up)-1;
		}
	
		if (Current < Size-1)
		{
			Down = Rows[Current+1];
			dcolumns = string_length(Down)-1;
		}
	
		for(var i = 1; i <= mcolumns; i++)
		{		
			if (string_char_at(Display,i) == "@")
			{
				var adjCount = 0;
				if (i > 1 && string_char_at(Display,i-1) == "@")
				{
					adjCount++;
				}
				if (i < mcolumns && string_char_at(Display,i+1) == "@")
				{
					adjCount++;
				}
		
				if (ucolumns > 0)
				{
					if (string_char_at(Up,i) == "@")
					{
						adjCount++;
					}
					if (i < ucolumns && string_char_at(Up,i+1) == "@")
					{
						adjCount++;
					}
					if (i > 1 && string_char_at(Up,i-1) == "@")
					{
						adjCount++;
					}
				}
				if (dcolumns > 0)
				{
					if (string_char_at(Down,i) == "@")
					{
						adjCount++;
					}
					if (i < dcolumns && string_char_at(Down,i+1) == "@")
					{
						adjCount++;
					}
					if (i > 1 && string_char_at(Down,i-1) == "@")
					{
						adjCount++;
					}
				}
		
				if (adjCount < 4)
				{
					Value2++;	
					var byte = string_byte_at("X", 1);
					var str = string_set_byte_at(Display, i, byte);
					Display = str;
					Rows[Current] = str;
				}
			}
		}
	
		Sum2 += Value2;	
		PassValue2 += Value2;	
	}
	else
	{
		Value1 = 0;	
	
		Display = Rows[Current];
		Up = "";
		Down = "";
	
		var mcolumns = string_length(Display)-1;
		var ucolumns = 0;
		var dcolumns = 0;
	
		if (Current > 0)
		{
			Up = Rows[Current-1];
			ucolumns = string_length(Up)-1;
		}
	
		if (Current < Size-1)
		{
			Down = Rows[Current+1];
			dcolumns = string_length(Down)-1;
		}
	
		for(var i = 1; i <= mcolumns; i++)
		{		
			if (string_char_at(Display,i) == "@")
			{
				var adjCount = 0;
				if (i > 1 && string_char_at(Display,i-1) == "@")
				{
					adjCount++;
				}
				if (i < mcolumns && string_char_at(Display,i+1) == "@")
				{
					adjCount++;
				}
		
				if (ucolumns > 0)
				{
					if (string_char_at(Up,i) == "@")
					{
						adjCount++;
					}
					if (i < ucolumns && string_char_at(Up,i+1) == "@")
					{
						adjCount++;
					}
					if (i > 1 && string_char_at(Up,i-1) == "@")
					{
						adjCount++;
					}
				}
				if (dcolumns > 0)
				{
					if (string_char_at(Down,i) == "@")
					{
						adjCount++;
					}
					if (i < dcolumns && string_char_at(Down,i+1) == "@")
					{
						adjCount++;
					}
					if (i > 1 && string_char_at(Down,i-1) == "@")
					{
						adjCount++;
					}
				}
		
				if (adjCount < 4)
				{
					Value1++;		
				}
			}
		}
	
		Sum1 += Value1;
	}
	
	Current++;
}
else if (!IsPart2)
{
	IsPart2 = true;
	Current = 0;
}
else if (PassValue2 > 0)
{
	PassValue2 = 0;		
	Current = 0;
}
//1569
//9280