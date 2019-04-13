-- Author: Edward Qian
-- Date: 2019-04-13

-- string type
string1 = "this is string1"
string2 = "this is string2"

-- use [[ to wrap long text
html  = [[
<html>
<head></head>
<body>
    <a href="http://www.google.com>Google</a>
</body>
</html>
]]
print(html)

-- Auto convert a string to number type when calculate
print("2" + 10) --> 12
print("-2e2" * 6) --> -1200

-- use # to get a string length
len = #"www.google.com"
print(len) -->14