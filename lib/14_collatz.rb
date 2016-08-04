
def collatz
    max = n = 0
    arr = [0, 1]
    
    2.upto(999_999) do |i|
        j = i
        c = 0
        
        while j >= i
            c+=1
            
            if j % 2 == 0
                j /= 2
            else
                j = 3 * j + 1
            end
        end
        
        c += arr[j]
        arr[i] = c
        
        if c > max
            max = c
            n = i
        end
    end
    n
end

if __FILE__ == $0
    t = Time.now
    puts collatz, Time.now - t
end
