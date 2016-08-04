
def spiral_old(n = 1001)
    
    sum = 1
    cur = 1
    2.step(n - 1, 2) do |i|
        4.times do
            cur += i
            sum += cur
        end
    end
    sum
end

#
# 72 43 44 45 46 47 48 49 50
# 71 42 21 22 23 24 25 26 51
# 70 41 20  7  8  9 10 27 52
# 69 40 19  6  1  2 11 28 53
# 68 39 18  5  4  3 12 29 54
# 67 38 17 16 15 14 13 30 55
# 66 37 36 35 34 33 32 31 56
# 65 64 63 62 61 60 59 58 57
#
# 1 6 19 40 69
#  5 13 21 29
#   8  8  8

def spiral(n = 1001)
    
    sum = 1
    left = 6
    inc = 13
    (n / 2).times do |i|
        sum += 4 * left
        left += inc
        inc += 8
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts spiral, Time.now - t
end
