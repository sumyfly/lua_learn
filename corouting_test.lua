local product

function productor()
    local i = 0
    while(i<10) do
        i = i + 1
        send(i)
    end
end

function consumer()
    local n = 0
    while(n<10) do
        local i = receive()
        print(i)
        n = n + 1
    end
end

function receive()
    local status, value = coroutine.resume(product)
    return value
end

function send(x)
    coroutine.yield(x) -- handle here
end

-- startup coroutine
product = coroutine.create(productor)
consumer()