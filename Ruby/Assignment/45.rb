# Given a range of years as a string, return the number of leap years there are within the range (inclusive).

def leap_yr(s_year, e_year)
  count_no_of_leap_years = 0
  (s_year..e_year).each { |year|
    if (year % 4).zero?
      if (year % 100).zero?
        if (year % 400).zero?
          count_no_of_leap_years += 1
        end
      else
        count_no_of_leap_years += 1
      end
    end
  }
  print count_no_of_leap_years, "\n"
end

print 'Enter the range of year to find leap years \n Start year : '
s_year = gets.to_i
print 'End Year : '
e_year = gets.to_i
leap_yr(s_year, e_year)