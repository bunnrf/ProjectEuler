
require_relative 'factor'
require 'prime'

def divisible_triangle_old
    tri = 0
    i = 1

    while factor(tri).size < 500
        tri += i
        i+=1
    end
    tri
end

# looked through thread 12 to learn about the Tau algorithm
def divisible_triangle
    
    tri = i = sum = 1
    catch :done do
        while true
            sum = 1
            Prime.prime_division(tri).each { |x| sum = sum * (x[1] + 1) }
            
            throw :done if sum > 500
            
            i+=1
            tri += i
        end
    end
    tri
end

if __FILE__ == $0
    t = Time.now
    puts divisible_triangle, Time.now - t
end
