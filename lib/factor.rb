
def factor(n)
    factors = [1, n]
    2.upto(Math.sqrt(n)) do |i|
        if n % i == 0
            factors.push(i)
            factors.push(n / i) if n / i != i
        end
    end
    factors
end

def prime?(n)
    2.upto(Math.sqrt(n)) do |i|
        return false if n % i == 0
    end
    true
end
