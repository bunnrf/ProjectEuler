
require 'prime'
class Array
    def decrement
        if self == self.sort
            self.pop
            self.reverse!
            return
        end
        size = self.size
        x = size - 2
        until x < 1 || self[x] > self[x + 1]
            x-=1
        end
        i = y = x + 1
        while i < size
            y = i if self[i] > self[y] && self[i] < self[x]
            i+=1
        end
        self[x], self[y] = self[y], self[x]
        rev = self[(x + 1)..(size - 1)].reverse
        (x + 1).upto(size - 1) do |n|
            self[n] = rev[n - (x + 1)]
        end
        return true
    end
    
    def increment
        size = self.size
        x = size - 2
        until x < 1 || self[x] < self[x + 1]
            x-=1
        end
        i = y = x + 1
        while i < size
            y = i if self[i] < self[y] && self[i] > self[x]
            i+=1
        end
        self[x], self[y] = self[y], self[x]
        rev = self[(x + 1)..(size - 1)].reverse
        (x + 1).upto(size - 1) do |n|
            self[n] = rev[n - (x + 1)]
        end
        return true
    end
end

def pandigital_prime
    #n = [9, 8, 7, 6, 5, 4, 3, 2, 1]
    
    #n cannot be 8 or 9 digits, according to pe thread
    n = [7, 6, 5, 4, 3, 2, 1]
    
    while !Prime.prime?(n.join.to_i)
        n.decrement
    end
    n.join.to_i
end

#t = Time.now
#p pandigital_prime, Time.now - t
