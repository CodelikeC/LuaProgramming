print("Hello Lua")
print (2+3)

-- function Foo (x)
--     for i = 1, 100000 do 
--         x = x + math.sin(i)
--     end 
--     return x 
-- end 

-- print(Foo(10))

local sin = math.sin
function Foo(x)
    for i = 1, 100000 do 
        x = x + sin(i)
    end 
    return x 
end

print(Foo(10))
