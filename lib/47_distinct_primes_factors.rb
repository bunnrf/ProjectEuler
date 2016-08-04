
require 'prime'

def distinct_primes_factors
    i = 647
    found = false
    until found
        j = 0
        while i.prime_division.length > 3
            return i - 3 if j > 2
            j+=1
            i+=1
        end
        i+=1
    end
end

p distinct_primes_factors
