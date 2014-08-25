local top_divisible = 20
local divisible = function(value)
  for i=1, top_divisible do
    if value % i ~= 0 then
      return false
    end
  end
  return true
end
local target = top_divisible
while(not divisible(target)) do
	target = target+top_divisible
end
print(target)