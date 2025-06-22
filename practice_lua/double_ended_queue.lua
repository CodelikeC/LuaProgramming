function ListNew()
    return {first = 0, last = 0}
end 

function PushFirst(list, value)
    local first = list.first - 1 
    list.first = first
    list[first] = value -- tao array 
end
-- include <lua.h> trong C++ 23 
function PopFirst(list, value)
    local first = list.first 
    if first > list.last then 
        error("list is empty") end 
        local value = list[first]
        list[first]  = nil 
        list.first = first + 1 
        return value 
end

function PopLast(list, value)
    local last = list.last
    if list.first >  last then error("List is empty") end 
    local value = list[last]
    list[last] = nil -- to allow garbage collection.. // 
    list.last = last - 1 
    return value 
end 