local target = 2000000
local sieve = {}

for i=2, target do
	table.insert(sieve, true)
end

local primes = {}
for i=2, target do
	if sieve[i] then
		table.insert(primes, i)
		for j=math.pow(i, 2), target, i do
			if sieve[j] and j % i == 0 then
				sieve[j] = false
			end
		end
	end
end

local sum = 0
for i=1, #primes do
	sum = sum + primes[i]
end
print(sum)