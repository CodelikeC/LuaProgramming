function Expand(s)
    return (string.gsub(s, "s(%w+)", _G))
end

Name = "lua"; Status = "Hello" 
print(Expand("$name is $status, isnot it?"))

