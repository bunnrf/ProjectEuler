
def multiples(x = 1000)
    sum = 0
    
    (x).times do |n|
        sum += n if n % 3 == 0 || n % 5 == 0
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts multiples, Time.now - t
end
