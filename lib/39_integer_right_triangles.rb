
def count(n)
    count = 0
    a = 1
    b = 1
    c = n / 3 + 1
    while c < n - 1
        a = b = (n - c) / 2
        b+=1 if c % 2 == 1
        c2 = c**2
        while a > 0 && b < c
            count+=1 if a**2 + b**2 == c2
            a-=1
            b+=1
        end
        c+=1
    end
    count
end

def integer_right_triangles
    max = 0
    val = 0
    12.upto(1000) do |n|
        c = count(n)
        if c > max
            max = c
            val = n
        end
    end
    val
end

puts integer_right_triangles
