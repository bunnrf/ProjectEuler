
def fibonacci(x = 4_000_000)
    sum = 0
    fib1 = 1
    fib2 = 1

    while fib2 <= x
        fib1, fib2 = fib2, fib1 + fib2
        sum += fib2 if fib2 % 2 == 0
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts fibonacci, Time.now - t
end
