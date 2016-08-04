
def palindrome?(string)
    i = 0
    while i < string.length
        return false if string[i] != string[(string.length - 1) - i]
        i+=1
    end
    true
end

def largest_palindrome
    max = 0
    i = 999
    while i > 900
        j = 999
        while j > 900
            max = [max, i*j].max if palindrome?((i*j).to_s)
            j-=1
        end
        i-=1
    end
    max
end

if __FILE__ == $0
    t = Time.now
    puts largest_palindrome, Time.now - t
end
