-- check whether position ( n, c) is free from attacks

function Isplaceok(a, n, c)
    for i = 0, n - 1 do 
        if (a[i] == c) or 
        (a[i] - i == c -n) or 
        (a[i]+ i == c + n) then 
            return false
        end 
    end 
    return true -- no attacks, Place is Ok
end 

-- print a board .. 
function PrintSolution(a, n)
    for i = 1 , n do 
        for j = 1, n do 
            io.write(a[i] == j and "X" or "-", "")
        end 
        io.write("\n")
    end
    io.write("\n")
end 

-- add to board a all queens from 'n' t0 "N"
function Addqueen (a, n, N)
        if n > N then    -- all queens have been placed?
          PrintSolution(a)
        else  -- try to place n-th queen
          for c = 1, N do
            if Isplaceok(a, n, c) then
              a[n] = c    -- place n-th queen at column 'c'
              Addqueen(a, n + 1)
            end
          end
        end
      end
      -- run the program
      Addqueen({}, 1, 10)