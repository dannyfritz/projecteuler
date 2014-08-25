local min, max = 100, 999
local isPalindrome = function(value)
	local reverse = string.reverse(value)
	if reverse == string.format("%s", value) then
		return true
	end
	return false
end
local result = 0
for i=max, min, -1 do
	for j=i, max do
		if i*j>result and isPalindrome(i*j) then
			result = i*j
		end
	end
end
print(result)