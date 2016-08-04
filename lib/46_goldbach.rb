
require 'prime'

def soapatas?(n)
    return true if Prime.prime?(n)
    Prime.take_while { |pr| pr < n }[1..-1].each do |pr|
        return true if Math.sqrt((n - pr) / 2) % 1 == 0
    end
    false
end

def goldbach
    
    i = 35
    while soapatas?(i)
        i += 2
    end
    i
end

p goldbach
