-- Author: Edward Qian
-- Date: 2019-04-13

-- Create an empty table
local tblA = {}

-- Initialize a table
local tblB = {"apple", "pear", "orange", "grape"}

-- test
a = {}
a["key1"] = 10
key2 = 10
a[key2] = 100
a[key2] = a[key2] + 11

for k, v in pairs(a) do
  print(k .. " : " .. v)
end

-- table index start from 1
for k, v in pairs(tblB) do 
  print("key", k)
end

-- table length
tblC = {}
for i = 1, 10 do
  tblC[i] = i
end

tblC["key"] = "value"
print(tblC["key"])

-- table sort
fruits = {"banana", "orange", "apple", "grapes"}
table.sort(fruits)
for k, v in ipairs(fruits) do
    print(k,v)
end