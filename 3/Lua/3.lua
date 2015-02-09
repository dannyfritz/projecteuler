local large = 600851475143
function isPrime(value)
	for i=2, math.floor(value/2)-1 do
		if value % i == 0 then
			return false
		end
	end
	return true
end
for i=math.floor(math.sqrt(large))+1, 2, -1 do
	if large % i == 0 and isPrime(i) then
		print(i)
		return
	end
end
