-- hugh table lib 
-- a code like 
A = {}
Lim = 10000000 

for i = 1 , Lim do A[i] = i end 
print(collectgarbage("count")) -- 
for i = 1 , Lim do A[i] = nil end 
print(collectgarbage("count"))
for i = Lim + 1, 2 *Lim do A[i] = nil end 
print(collectgarbage("count"))
-- 17 