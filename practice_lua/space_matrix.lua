--- space matrix by using multiplication . 

function Multi(a,b)
    local c ={}
    for i = 1, # a do
        local resultLine = {}
        for k, va in pairs(a[i]) do 
            for j, vb in pairs(b[k]) do 
                local res = (resultLine[j] or 0) + va*vb 
                resultLine[j] = (res ~= 0) and res or nil 
            end 
        end 
        c[i] = resultLine
    end 
    return c 
end 