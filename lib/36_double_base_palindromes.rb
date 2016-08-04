
def palindrome?(s)
    i = 0
    while i < s.length / 2
        return false if s[i] != s[s.length - i - 1]
        i+=1
    end
    true
end

def double_palindrome?(n)
    palindrome?(n.to_s) && palindrome?(n.to_s(2))
end

def double_base_palindromes
    sum = 0
    1.step(999_999, 2) do |n|
        sum += n if double_palindrome?(n)
    end
    sum
end
