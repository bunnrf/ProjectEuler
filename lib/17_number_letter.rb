
#module pulled from my test-first-ruby folder
module In_Words
    
    def in_words
        return "zero" if self == 0
        thds = [nil, "thousand", "million", "billion", "trillion"]
        i = (self.to_s.length / 3.0).ceil
        s = []
        while i > 0
            s.push group_in_words((self % 10 ** (i * 3)) / 10 ** ((i -= 1) * 3))
            s.push(thds[i]) if ((self % 10 ** ((i + 1) * 3)) / 10 ** (i * 3)) > 0
        end
        s.flatten.compact.join(" ")
    end
    
    def group_in_words(x)
        ones = [nil, "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        tens = [nil, nil, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
        words = []
        words.push(ones[x / 100])
        words.push("hundred") if x / 100 > 0
        words.push((x % 100 < 20 ? ones[x % 100] : [tens[(x % 100) / 10], ones[x % 10]]))
    end
end

class Fixnum
    include In_Words
end

def number_letter
    total = 0

    1.upto(1000) do |i|
        i.in_words.each_char { |c| total += 1 unless c == ' ' }
    end

    #module does not use 'and's, but there are 1000 - 100 - 9 instances of 'and' between 1 and 1000
    total += 3 * 891
end

if __FILE__ == $0
    t = Time.now
    puts number_letter, Time.now - t
end
