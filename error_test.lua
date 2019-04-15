-- pcall a function, if error -> return false
function fun1(a)
    print(a)
    return a + 1
end

local r1, v1 = pcall(fun1, 3)
print("r1: ", r1, v1)

function fun2(a)
    error("error..."..a)
end

local r2, v2 = pcall(fun2, 3)
print("r2: ", r2, v2)

function fun3(x)
    x = x + 100
end

print(fun3(1))