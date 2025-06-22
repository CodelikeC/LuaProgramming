function FindPath (curr, to, path, visited)
    path = path or {}
    visited = visited or {}
    if visited[curr] then 
        return nil -- null means no path here
    end 
    visited[curr] = true -- mark node is visited
    path[#path+1] = curr -- add it to path 
    if curr == to then  -- add node to next proxy 
        return path  -- path is here .. 
    end 
    -- try all adjacent nodes.. 
    for node in pairs(curr.adj) do -- check in the loop .. 
        local p = FindPath(curr, to , path ,visited)
        if p then return p end 
    end 
    table.remove(path) -- removes nodes from path.. 
end 

local function name2node (graph, name)
        local node = graph[name]
        if not node then
          -- node does not exist; create a new one
          node = {name = name, adj = {}}
          graph[name] = node
        end
        return node
      end

function ReadPath()
    local graph = {}
    for line in io.lines() do 
        -- split the line in two names .. 
        local namefrom, nameto  = string.match(line, "(#s)%s + (%s)")
        -- find corresponding nodes..
        local from  = name2node(graph, namefrom)
        local to = name2node(graph, nameto)
        -- adds to to the adjacent set of from
        from.adj[to] = true 
    end 
    return graph
end 

function PrintPath(path)
    for i = 1, #path do 
        print(path[i].name)
    end
end 

G = ReadPath()
A = name2node(G, "a")
B = name2node(G, "b")
P = FindPath(A, B)
if P then PrintPath(P) end 


