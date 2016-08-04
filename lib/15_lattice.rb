
#the bottom corner is reached after 20 moves right and 20 moves down
#how many ways are there to arrange 20 right-moves and 20 down-moves?
#
# [xxx___]
# [xx_x__]
# [xx__x_]
# [xx___x]
# [x_xx__]
# [x_x_x_]
# [x_x__x]
# [x__xx_]
# [x__x_x]
# [x___xx]
#
# 3 -> 4321
# 4 -> 54321 4321 321 21 1
# 5 -> 654321 54321 4321 321 21 1 54321 4321 321 21 1 4321 321 21 1 321 21 1 21 1 1
# 6 -> 7654321 654321 54321 4321 321 21 1 654321 54321 4321 321 21 1 54321 4321 321 21 1 4321 321 21 1 321 21 1 21 1 1
#              654321 54321 4321 321 21 1 54321 4321 321 21 1 4321 321 21 1 321 21 1 1
#                     54321 4321 321 21 1 4321 321 21 1 321 21 1 21 1 1
#                           4321 321 21 1 321 21 1 21 1 1
#                                321 21 1 21 1 1
#                                    21 1 1
#                                       1
#
# n = 1 -> 2    2 + 1 = 3           2/1
# n = 2 -> 6    6 + 4 = 10          6/4 = 3/2
# n = 3 -> 20   20 + 15 = 35        20/15 = 4/3
# n = 4 -> 70   70 + 56 = 126       70/56 = 5/4
# n = 5 -> 252  252 + 210 = 462     252/210 = 6/5

def lattice(n = 20)
    return 2 if n < 2
    2 * (Rational(n - 1, n) + 1) * lattice(n - 1)
end

def lattice1(n)
    return 2 if n < 2
    2 * (1 + (1 - 1.0 / n)) * lattice(n - 1)
end

def lattice2(n)
    paths = 1
    n.times do |i|
        paths = 2 * paths * (1 + Rational(i, i + 1))
    end
    paths
end

def nCk(n)
    (n + 1..2 * n).reduce(:*) / (1..n).reduce(:*)
end

def time(fun, input)
    t = Time.now
    ans = fun.call(input)
    t = Time.now - t
    puts "#{fun.name}(#{input}): #{ans} in #{t}s"
end

if __FILE__ == $0
    20.times do |i|
        i += 1
        time( method(:lattice), i)
        time( method(:lattice1), i)
        time( method(:lattice2), i)
        time( method(:nCk), i)
        print "\n"
    end
end
