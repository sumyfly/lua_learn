-- while loop 10 times
n = 0
while(n<10) do
    print("n", n)
    n = n + 1
end

-- for loop 11 times
for i=0,10,1 do
    print("i", i)
end


a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i..":"..v)
end


-- repeat 11 times
m = 0
repeat 
    print("m", m)
    m = m + 1
until( m > 10)
