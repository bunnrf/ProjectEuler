
#return value if pandigital, 0 if not
def pandigital?(n)
    s = n.to_s.split("")
    l = s.uniq.length
    return (45 - s.map(&:to_i).reduce(:+)) * 1000000000 + n if l > 8
    0
end

def substring_divisibility
    sum = 0
    17.step(1000, 17) do |d8|
        13.step(1000, 13) do |d7|
            next if d7 % 100 != d8 / 10
            132.step(1000, 11) do |d6|
                next if d6 % 100 != d7 / 10
                14.step(1000, 7) do |d5|
                    next if d5 % 100 != d6 / 10
                    15.step(1000, 5) do |d4|
                        next if d4 % 100 != d5 / 10
                        12.step(1000, 3) do |d3|
                            next if d3 % 100 != d4 / 10
                            12.step(1000, 2) do |d2|
                                next if d2 % 100 != d3 / 10
                                n = (d8 + d5 * 1000 + d2 * 1000000)
                                sum += pandigital?(n)
                            end
                        end
                    end
                end
            end
        end
    end
    sum
end

p substring_divisibility
