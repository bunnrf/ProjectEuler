
# Gave up on this one and guessed primes near 1000 until i got 983. The algorithm is taken from thread 26.
# 1/7 = .142857...
#     =  142857 / 1000000 + 142857 / 1000000000000 + ...
#     =  142857 / 10**6 [1 + 1 / (10**6) + 1 / (10**12) + ...]
#     =  142857 / 10**6 (1 / (1 - 1 / 10**6))
#     =  142857 / 999999
#

def reciprocal
    dividend = 1
    answer = max = remainder = count = 0
    999.downto(7) do |divisor|
        next if divisor % 2 == 0 || divisor % 5 == 0
        count = 0
        until count > 2 && remainder == 1
            remainder = dividend % divisor
            dividend = remainder * 10
            count += 1
        end
        if count > max
            max = count
            answer = divisor
        end
    end
    answer
end

if __FILE__ == $0
    t = Time.now
    puts reciprocal, Time.now - t
end
