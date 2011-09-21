# how many sundays fell on the first of the month during the twentieth century?
# this solution gives 1 too many (172 instead of 171... why?!)

def month_days month, year
	case month
	when 1, 3, 5, 7, 8, 10, 12 then 31
	when 4, 6, 9, 11 then 30
	when 2 then # LOL FEBRUARY
		if year % 4 == 0
			if year % 100 == 0
				if year % 400 == 0
					return 29
				end
				return 28
			end
			return 29
		end
		return 28
	end
end

sundays_on_first_day_of_month = 0
current_date = 1 # first day of 1901 was tuesday
(1901..2000).each do |year|
	(1..12).each do |month|
		sundays_on_first_day_of_month += 1 if current_date % 7 == 0
		current_date += month_days month, year
	end
end
puts sundays_on_first_day_of_month