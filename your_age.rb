require 'date'
require 'colorize'
class Age
    def birthday(year,month,day)
        todaydate=Date.today
        ageyear=todaydate.year-year
        if todaydate.month>=month
            agemonth=todaydate.month-month
        else
            agemonth=month-todaydate.month
        end
        if todaydate.day>=day
            ageday=todaydate.day-day
        else
            ageday=day-todaydate.day
        end
        print "My age #{ageyear} year : #{agemonth} month: #{ageday} day".red
    end
end
print "Enter the your birthday date?\n".red
print "year:".blue
year=gets.to_i
print "month:".blue
month=gets.to_i
print "day:".blue
day=gets.to_i
birthdate=Date.new(year,month,day)
newage=Age.new
newage.birthday(birthdate.year,birthdate.month,birthdate.day)