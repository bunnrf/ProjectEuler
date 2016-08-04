
def pentagonal?(n)
    ((Math.sqrt(1 + 24 * n) + 1) / 6.0) % 1 == 0
end

def hexagonal?(n)
    ((Math.sqrt(1 + 8 * n) + 1) / 4.0) % 1 == 0
end

def tripenthex_old
    
    tri = 0
    i = 1
    while true
        tri += i
        if pentagonal?(tri)
            if hexagonal?(tri)
                 return tri if i > 285
            end
        end
        i+=1
    end
end

#all hexagonal numbers are also triangular numbers, accorting to thread 45
#about 2 times faster
def tripenthex
    hex = 0
    i = 1
    while true
        hex += i
        if pentagonal?(hex)
            return hex if hex > 40755
        end
        i += 4
    end
end
