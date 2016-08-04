
require_relative 'factor'

def smallest_multiple(x = 20)
    num = 1
    x.times do |n|
        next if n < 2
        if factor(num).sort[0..(n - 1)] != (1..n).to_a
            num *= factor(n).sort.find { |f| f != 1 && prime?(f) }
        end
    end
    num
end

if __FILE__ == $0
    t = Time.now
    puts smallest_multiple, Time.now - t
end
