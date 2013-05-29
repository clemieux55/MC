require 'csv'


class MissionControlCheck
	attr_accessor :x

	def initialize
		@x = x
		@time = [Time.now.hour, Time.now.min]

	end

	def check_in(x="in")
		if File.exist?('./time_of_check_in.csv') == false
			CSV.open('./time_of_check_in.csv', 'w') do 
		 		puts @time
		 	end
		 	else
		 		"You are already checked in"
		end

		display_time(x)
	end


	def display_time(x)
		if @time[0].to_i >= 12
		 		"You are checked #{x} at #{@time[0]}:#{@time[1]} AM"
		 	else
		 		"You are checked #{x} at #{@time[0]} : #{@time[1]} PM"
		end
	end

	def check_out(x="out")
		if File.exist?('./time_of_check_in.csv') == true
			display_time(x)
		else
			"You are already checked out"
		end
	end


end



	mc = MissionControlCheck.new
	mc.x = "in"




