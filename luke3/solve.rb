#!/usr/bin/ruby

year = 1
day = 0
days_a_year = 365
weekday = 0
count = 0

while year <= 2015 do
    day = 0
    
    if year%4 == 0 && !(year%100 == 0 && year%400 != 0)
        days_a_year = 366
    else
        days_a_year = 365
    end

    while day < days_a_year do
        if day == 256 && weekday == 0
            count = count + 1
        end

        weekday = (weekday + 1) % 7
        day = day + 1
    end

    year = year + 1
end

puts "COUNT: #{count}"
