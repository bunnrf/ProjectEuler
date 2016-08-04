
def sundays
    
    year = 1900
    month = 1
    day = 1
    sundays = 0
    
    while year < 2001
    
        case month
        when 4, 6, 9, 11
            day += 30
        when 2
            day += 28
            day += 1 if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        when 12
            day += 31
            month = 0
            year+=1
        else
            day += 31
        end
        month+=1
    
        if year > 1900
            sundays += 1 if day % 7 == 0
        end
    end
    sundays
end

if __FILE__ == $0
    t = Time.now
    puts sundays, Time.now - t
end
