
@fact = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
def digit_factorial?(n)
    return true if n == n.to_s.split('').map { |di| @fact[di.to_i] }.reduce(:+)
    false
end

def digit_factorials
    sum = 0
    #9999999 UB
    11.upto(50000) do |n|
        sum += n if digit_factorial?(n)
    end
    sum
end
