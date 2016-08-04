
def names
    arr = File.read(File.dirname(__FILE__) + "/p022_names.txt").split("\",\"")
    
    arr[0].delete!("\"")
    arr[-1].delete!("\"")
    
    arr.sort!
    
    sum = 0
    arr.each_with_index do |n, i|
        val = n.each_char.map { |c| c.ord - 64}.reduce(:+)
        sum += val * (i + 1)
    end
    sum
end

if __FILE__ == $0
    t = Time.now
    puts names, Time.now - t
end
