
def coin_sums(t = 200)
    count = 0
    coins = [200, 100, 50, 20, 10, 5, 2]
    t.step(0, -200) do |a|
        a.step(0, -100) do |b|
            b.step(0, -50) do |c|
                c.step(0, -20) do |d|
                    d.step(0, -10) do |e|
                        e.step(0, -5) do |f|
                            f.step(0, -2) do |g|
                                count+=1
                            end end end end end end end
    count
end
