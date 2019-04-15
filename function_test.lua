-- declare a function
function fibonacci(n)
  if n == 0 then
    return 1
  else
    return n * fibonacci(n - 1)
  end
end
  
print(fibonacci(5))
funRef = fibonacci
print(funRef(5))
  
-- fuction param
function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k,v));
    end
end

tab = {key1="val1", key2="val2"};
testFun(tab, 
    function(key,val) -- anonymous function
        return key.."="..val;
    end
);
