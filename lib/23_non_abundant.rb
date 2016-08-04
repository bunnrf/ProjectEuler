
def abundant?(n)
    sum = 1
    i = 2
    while i * i <= n
        if n % i == 0
            sum += i
            sum += n / i if n / i != i
        end
        i+=1
    end
    return true if sum > n
    false
end

def non_abundant
    abd_arr = []
    1.upto(28123) do |i|
        abd_arr.push(i) if abundant?(i)
    end
    
    sum_arr = Array.new(28123, false)
    i = 0
    while abd_arr[i] < 28123 / 2
        j = i
        while j + i < abd_arr.length
            pair = abd_arr[i] + abd_arr[j]
            sum_arr[pair] = true
            j+=1
        end
        i+=1
    end
    
    sum = 0
    i = 1
    while i <= sum_arr.length
        sum += i if sum_arr[i] == false
        i+=1
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts non_abundant, Time.now - t
end
