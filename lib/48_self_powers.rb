
def self_powers
    sum = 0
    1.upto(999) { |n| sum += (n ** n) % 10_000_000_000 }
    sum.to_s[-10..-1].to_i
end

p self_powers
