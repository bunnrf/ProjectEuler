
require_relative 'factor'

def largest_prime(x = 600851475143)
    factor(x).select { |n| prime?(n) } .max
end

if __FILE__ == $0
    t = Time.now
    puts largest_prime, Time.now - t
end
