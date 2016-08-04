
require 'prime'

def truncatable?(n)
    s = n.to_s
    0.upto(s.length - 1) do |i|
        return false if !Prime.prime?(s[i..(s.length - 1)].to_i)
    end
    0.upto(s.length - 1) do |i|
        return false if !Prime.prime?(s[0..(s.length - 1 - i)].to_i)
    end
    true
end

def truncatable_primes
    i = 0
    sum = 0
    Prime.take_while do |n|
        if truncatable?(n)
            sum += n
            i+=1
        end
        i < 15
    end
    sum - 7 - 5 - 3 - 2
end
