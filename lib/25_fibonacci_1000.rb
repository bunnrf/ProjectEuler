
def fib(n)
    n1 = 1
    n2 = 2
    4.upto(n) do
        n2, n1 = n1 + n2, n2
    end
    n1
end

def fibonacci_1000(x = 1000)
    n1 = 1
    n2 = 2
    i = 3
    until n2.to_s.length > x - 1 do
        n2, n1 = n1 + n2, n2
        i += 1
    end
    i
end

if __FILE__ == $0
    t = Time.now
    puts fibonacci_1000, Time.now - t
end
