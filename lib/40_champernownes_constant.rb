
def champernownes_constant
    d = x = 0
    i = val = 1
    targets = [99, 999, 9999, 99999, 999999]
    while d < 1_000_000
        s = i.to_s
        if s.length + d > targets[x]
            val *= s[targets[x] - d].to_i
            x+=1
        end
        d += s.length
        i+=1
    end
    val
end
