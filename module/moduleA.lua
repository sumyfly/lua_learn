-- declare a module
module = {}

module.constant = "constant value"

function module.fun1()
    io.write("This is a public function!\n")
end

local function fun2()
    io.write("This is a private function!\n")
end

function module.fun3()
    fun2()
end

return module