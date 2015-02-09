local sum = 0
local last = 1
local i = 2
while i <= 4000000 do
  if i % 2 == 0 then
    sum = sum + i
  end
  last, i = i, i + last
end
print(sum)
