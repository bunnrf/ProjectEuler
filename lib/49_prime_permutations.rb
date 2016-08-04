
require 'prime'

def prime_permutations
    Prime.take_while { |n| n < 10000 } .select { |n| n > 1000 } .each do |n|
        perms = n.to_s.split("").permutation(4).map(&:join).map(&:to_i).select { |m| m.prime? && m > n }
        perms.each do |m|
            return n * 100000000 + m * 10000 + m + m - n if perms.include?(m + m - n) && n > 1487
        end
    end
end

p prime_permutations
