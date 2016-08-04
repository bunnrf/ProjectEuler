
def pentagonal?(n)
    return true if ((Math.sqrt(1 + 24 * n) + 1) / 6.0) % 1 == 0
    false
end

def pentagon_numbers
    
    pents = [1]
    
    i = 2
    while true
        n = (3 * i - 1) * i / 2
        pents.each do |pent|
            if pentagonal?(sum = pent + n) 
                return n if pentagonal?(pent + sum)
                return pent if pentagonal?(n + sum)
            end
        end
        pents.push(n)
        i+=1
    end
end
