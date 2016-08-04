
def sum_square(x = 100)
    sq = 0
    sum = 0
    
    1.upto(x) do |n|
        sq += n ** 2
        sum += n
    end
    sum ** 2 - sq
end

if __FILE__ == $0
    t = Time.now
    puts sum_square, Time.now - t
end
