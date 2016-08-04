
#9 ^ 5 = 59049
#6 * 59049 < 999999
#definitely no numbers over 999999
#i think no numbers greater than 6 * 59049

def fifth_powers
    powers = [0, 1, 32, 243, 1024, 3125, 7776, 16807, 32768, 59049]
    
    total_sum = 0
    10.upto(354294) do |n|
        s = n.to_s
        l = s.length
        sum = i = 0
        while sum <= n && i < l
            sum += powers[s[i].to_i]
            i+=1
        end
        total_sum += n if sum == n and i == l
    end
    total_sum
end

if __FILE__ == $0
    t = Time.now
    puts fifth_powers, Time.now - t
end
