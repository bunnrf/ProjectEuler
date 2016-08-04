
require 'prime'

def factors_of(number)
    primes, powers = number.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
        primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    divisors.sort.map{|div| [div, number / div]}
end

@tab = {}
def gozinta_aux(num)
    count = 0
    return 1 if num < 2
    factors_of(num)[0..-2].each do |fac|
        div = fac[0]
        if @tab[div] != nil
            count += @tab[div]
        else
            print "  ", div, "\n"
            count += @tab[div] = gozinta_aux(div)
        end
    end
    count
end

def gozinta
    f = File.read(File.dirname(__FILE__) + "/nums.txt")
    
    sum = 0
    f.each_line do |line|
        n = line.to_i
        if gozinta_aux(n) == n
            sum += n
        end
    end
    sum
end

if __FILE__ == $0
    p gozinta
end
