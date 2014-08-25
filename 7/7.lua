local target = 10001
local prime = {}
prime.current = 2
prime.number = 1
local test_number = 2
while(prime.number <= target) do
	local test_flag = true
	for i=2, math.floor(test_number/2) do
		if test_number % i == 0 then
			i = test_number
			test_flag = false
		end
	end
	if test_flag then
		prime.current = test_number
		prime.number = prime.number + 1
	end
	test_number = test_number + 1
end
print (prime.current, prime.number)