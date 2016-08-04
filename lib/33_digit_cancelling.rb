
def digit_cancelling
    fracs = []
    10.upto(100) do |a|
        next if a % 10 == 0
        (a + 1).upto(100) do |b|
            next if b % 10 == 0
            first = a.to_s[0]
            second = a.to_s[1]
            next if first == second
            next if b % 11 == 0
            r = Rational(a, b)
            fracs.push Rational(a, b) if r == Rational(a.to_s.delete(first).to_i, b.to_s.delete(first).to_i)
            fracs.push Rational(a, b) if r == Rational(a.to_s.delete(second).to_i, b.to_s.delete(second).to_i)
        end
    end
    fracs.reduce(:*).denominator
end
