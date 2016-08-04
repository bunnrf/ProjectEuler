
def pandigital?(a, b, c)
    hash = Hash.new(0)
    (a.to_s + b.to_s + c.to_s).each_char do |di|
        return false if di == '0' || hash[di] > 0
        hash[di] += 1
    end
    true
end

def pandigital
    prods = []
    digits = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    digits.permutation(5).to_a.each do |per|
        a = per[0]
        b = per[1..4].join.to_i
        prod = a * b
        prods.push(prod) if pandigital?(a, b, prod)
        a = per[0..1].join.to_i
        b = per[2..4].join.to_i
        prod = a * b
        prods.push(prod) if pandigital?(a, b, prod)
    end
    prods.uniq.reduce(:+)
end

puts pandigital
