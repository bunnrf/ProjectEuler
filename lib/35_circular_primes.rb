
require 'prime'

def circular_prime?(n)
    s = n.to_s.split('')
    (s.length - 1).times do
        return false if Prime.prime?(s.rotate!.join.to_i) == false
    end
    true
end

def circular_primes
    count = 0
    Prime.take_while { |n| n < 1_000_000 } .each { |n| count+=1 if circular_prime?(n) }
    count
end
