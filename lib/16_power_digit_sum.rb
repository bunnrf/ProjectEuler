
def power_digit_sum(x = 2**1000)
    sum = 0
    x.to_s.each_char { |c| sum += c.to_i }
    sum
end

if __FILE__ == $0
    t = Time.now
    puts power_digit_sum, Time.now - t
end

