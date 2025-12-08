/// @description Insert description here
// You can write your code in this editor


if (Current < Size)
{
	var range = Ranges[Current];
	Display = range;
	
	var split = string_split(range, "-");
	var first = real(split[0]);
	var last = real(split[1]);
	
	for (var i = first; i <= last; i++;)
	{
		var d = 0;
		var number = i;
		while (number > 0)
		{
			d++;
			number = floor(number / 10);
		}
		
		if (d % 2 == 0)
		{
			var divisor = power(10, d/2) + 1;
			
			if (i % divisor == 0)
			{
				Sum1 += i;
			}
		}
		
		var isPattern = false;
		var pLen = 1;
		while (pLen < d)
		{
			if (d % pLen == 0)
			{
				var pv = power(10, pLen);
				var pattern = i % pv;
				var remaining = floor(i / pv);
				var next = remaining % pv;
			
				while (next == pattern)
				{					
					if (remaining == pattern)
					{
						isPattern = true;
					} 
					remaining = floor(remaining / pv);
					next = remaining % pv;
				}
			}
			pLen++;
		} 
		
		if (isPattern)
		{
			Sum2 += i;
		}
	}
	Current++;
}
//30260171216