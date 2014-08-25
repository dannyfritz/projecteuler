target = 100
function gauss(n)
	return (n*(n+1))/2
end
local square_sum, sum_square = math.pow(gauss(target),2), (target+1)*target*(2*target+1)/6
print(square_sum - sum_square)