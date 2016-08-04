
def special_triplet(n = 1000)
    
    a = b = 0
    c = 334
    catch :found do
        while c < n
            a = (n - c) / 2
            b = (n - c) / 2
            b+=1 if c % 2 != 0
            c2 = c**2
            while a >= 0 && b <= c
                throw :found if a**2 + b**2 == c2
                a-=1
                b+=1
            end
            c+=1
        end
    end
    a * b * c
end

if __FILE__ == $0
    t = Time.now
    puts special_triplet, Time.now - t
end
