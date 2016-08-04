
require_relative 'factor'
require 'prime'

def n_prime(x = 10001)
    #according to prime number theorem, pi(n) ≈ n/ln(n) where pi(n) is the number of primes less than n
    
    i = x
    until i / Math.log(i) > x
        i+=x
    end
    
    nums = Array.new(i, true)
    nums[0] = nums[1] = false
    n = 2
    while n <= Math.sqrt(i)
        if nums[n]
            j = n * n
            while j < i
                nums[j] = false
                j+=n
            end
        end
        n+=1
    end
    
    n = 0
    primes = 0
    while n < i
        primes += 1 if nums[n]
        break if primes > 10000
        n+=1
    end
    n
end

if __FILE__ == $0
    t = Time.now
    puts n_prime, Time.now - t
    
    t = Time.now
    puts Prime.take(10001)[-1], Time.now - t
end


