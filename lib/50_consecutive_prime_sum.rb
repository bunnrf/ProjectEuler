
require 'prime'

#1,000,000 / 22 = ~45,000
#this is the highest possible average value of primes in the target sequence
#let's only consider primes under 50,000
def consecutive_prime_sum
    sum = 0
    cumulative_sum = Prime.take_while { |n| n < 50000 } .map { |n| sum += n }
    
    max = 953
    max_terms = i = 21
    while i < cumulative_sum.length
        j = i - max_terms - 1
        diff = 0
        while j >= 0 && diff < 1_000_000
            diff = cumulative_sum[i] - cumulative_sum[j]
            if Prime.prime?(diff)
                max = diff
                max_terms = i - j
            end
            j-=1
        end
        i+=1
    end
    max
end

p consecutive_prime_sum
