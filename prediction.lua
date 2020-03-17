-- https://blog.codingnow.com/2017/01/exponential_distribution.html#c47363
-- rate = 10

-- math.floor(math.log(1-math.random()) * (-rate))  -- 其中 rate = 10 。

-- 好了，如果我们想加上 10 张保底，又想让间隔大致符合指数分布怎么办？简单：

function erand(rate, grantee_number)
    i = 0
    while true do
        i = i + 1
        local p = math.floor(math.log(1-math.random()) * (-rate))
        if p < grantee_number then
            -- print("i:", i)
            return p
        end
    end
end

sum = 0
times = 1000000
for j = 1, times do
    sum = sum + erand(10, 10) + 1
end 

actural_rate = times / sum
print("actural_rate:", actural_rate)

sum = 0
for j = 1, times do
    sum = sum + erand(10, 30) + 1
end 

actural_rate = times / sum
print("actural_rate:", actural_rate)