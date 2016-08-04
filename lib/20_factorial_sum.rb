
def factorial_sum(x = 100)
    (1..x).reduce(:*).to_s.chars.map(&:to_i).reduce(:+)
end

if __FILE__ == $0
    t = Time.now
    puts factorial_sum, Time.now - t
end
