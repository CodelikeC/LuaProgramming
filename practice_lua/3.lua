-- test 
-- changes numbers 

function ChangeNumbers(limit, delta)
    local function aux(num)
        num = tonumber(num)
        if num >= limit then return tostring(num + delta) end
    end
    for line in io.lines() do 
        line = string.gsub(line, "%d+", aux)
        io.write(line, "\n")
    end 
end 

print(ChangeNumbers(10, 2))