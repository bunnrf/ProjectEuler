
def distinct_powers(x = 100)
    arr = []
    2.upto(x) do |i|
        i.upto(x) do |j|
            arr.push(i**j)
            arr.push(j**i)
        end
    end
    arr.uniq.length
end

if __FILE__ == $0
    t = Time.now
    puts distinct_powers, Time.now - t
end
