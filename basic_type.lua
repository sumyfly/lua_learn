-- Author: Edward Qian
-- Date: 2019-04-13 09:11

--[[
  Learnning basic grammar of lua.
--]]

print(type("Hello World")) -->string
print(type(10.4*3)) --> number
print(type(print)) --> function
print(type(true)) --> boolean
print(type(nil)) --> nil
print(type(type(X))) --> string

print("单独的好处")

tab1 = { key1 = "val1", key2 = "val2", "val3"}
for k, v in pairs(tab1) do
  print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
  print(k .. " - " ..v)
end

-- Compare nil
print(type(X)=="nil")

-- number, lua only have double type
print(type(2))
print(type(2.2))
print(type(2e+1))