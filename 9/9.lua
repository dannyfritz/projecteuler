local sum = 1000
for a=1, sum do
	for b=a, sum do
		c = sum - a - b
		if a + b + c == sum then
			if math.pow(a, 2) + math.pow(b, 2) == math.pow(c, 2) then
				print(a, b, c, a*b*c)
			end
		end
	end
end