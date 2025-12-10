/// @description Insert description here
// You can write your code in this editor

if (Current < Size)
{
	if (IsPartTwo)
	{
		Display = Fresh[Current];
		var split = string_split(Display, "-");
		var rangeStart = real(split[0]);
		var rangeEnd = real(split[1]);
		var last = rangeEnd;
		
		if (Current < Size - 1)
		{
			var nextRange = Fresh[Current+1];
			var newSplit = string_split(nextRange, "-");
			var newFirst = real(newSplit[0]);
			var newLast = real(newSplit[1]);
			if (newFirst <= rangeEnd && newLast >= rangeEnd)
			{
				last = newFirst - 1;
			}
		}
		
		Value2 = last - rangeStart + 1;
		Sum2 += Value2;
	}
	else
	{
		Display = Check[Current];
	
		var realDisplay = real(Display);
	
		Value1 = 0;	
	
		var freshSize = array_length(Fresh);
		for(var i = 0; i < freshSize; i++)
		{
			var freshList = Fresh[i];
			var split = string_split(freshList, "-");
			var first = real(split[0]);
			var last = real(split[1]);
		
			if (first <= realDisplay && realDisplay <= last)
			{
				Sum1++;
				i = freshSize;
			}
		}	
	}
	
	Current++;
}
else if (!IsPartTwo)
{
	IsPartTwo = true;
	Current = 0;
	Size = array_length(Fresh);
}

//733
//362548991972737- too high