
require 'prime'

def phi(n)
    prod = n
    n.prime_division.each { |pair| prod *= Rational(pair[0] - 1, pair[0]) }
    prod
end

def resilience_old
    target = Rational(15499, 94744)
    prod = Rational(1, 1)
    den = 1
    Prime.take_while do |n|
        den *= n
        prod *= Rational(n - 1, n)
        prod >= target
    end
    
end

def resilience
    target = Rational(15499, 94744)
    prod = 1
    max = 0
    Prime.take_while do |n|
        max = n
        prod *= n
        phi(prod) / (prod - 1) > target
    end
    prod /= max
    i = 4
    while phi(prod) / (prod - 1) > target
        prod *= i if !Prime.prime?(i)
        i+=1
    end
    prod
end
