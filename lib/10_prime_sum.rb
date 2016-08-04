
require 'prime'

def prime_sum(x = 2000000)
    
    nums = Array.new(x, true)
    nums[0] = nums[1] = false
    n = 2
    while n <= Math.sqrt(x)
        if nums[n]
            j = n * n
            while j < x
                nums[j] = false
                j+=n
            end
        end
        n+=1
    end
    
    n = sum = 0
    while n < x
        sum += n if nums[n]
        n+=1
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts prime_sum, Time.now - t
    
    t = Time.now
    puts Prime.take_while { |n| n < 2000000 }.reduce(:+), Time.now - t
end


