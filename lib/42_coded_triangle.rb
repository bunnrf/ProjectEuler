
#k = 0
#@triangle = Array.new(20) do |x|
#    k += x + 1
#end

def triangular?(s)
    sum = 0
    s.each_char { |l| sum += l.ord - 64 }
    return true if ((Math.sqrt(1 + 8 * sum) - 1) / 2.0) % 1 == 0
    false
end

def coded_triangle
    File.read(File.dirname(__FILE__) + "/words.txt")[1..-2].split("\",\"").count { |word| triangular?(word) }
end
