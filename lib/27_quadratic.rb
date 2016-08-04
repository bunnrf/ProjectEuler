
require 'prime'

def consecutivePrimes(n)
    consecutivePrimes = maxA = 0
    (-1000).upto(1000) do |a|
        i = 0
        while (i**2 + (a * i) + n).prime?
            if i > consecutivePrimes
                consecutivePrimes = i
                maxA = a
            end
            i+=1
        end
    end
    [consecutivePrimes, maxA]
end

def quadratic
    #n**2 + an + b
    #n = 0 => 0**2 + a0 + b
    #b must be prime
    max = 0
    maxAB = 0
    Prime.take_while { |n| n < 1000 }.each do |n|
        x = consecutivePrimes(n)
        if x[0] > max
            max = x[0]
            maxAB = x[1] * n
        end
    end
    maxAB
end

if __FILE__ == $0
    t = Time.now
    puts quadratic, Time.now - t
end
