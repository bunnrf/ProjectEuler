
def factor_sum(n)
    sum = 1
    2.upto(Math.sqrt(n).floor) do |i|
        if n % i == 0
            sum += i
            sum += n / i if n / i != i
        end
    end
    sum
end

def amicable(x = 10000)
    sum = 0
    arr = []
    5.upto(x) do |i|
        next if arr.include?(i)
        
        x = factor_sum(i)
        if i == factor_sum(x) && i != x
            sum += i + x
            arr.push(x)
        end
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts amicable, Time.now - t
end
