require 'csv'


class MissionControlCheck
	attr_reader

	def initialize
		@time = [Time.now.hour, Time.now.min]

	end

	def check_in
		if File.exist?('./time_of_check_in.csv') == false
			CSV.open('./time_of_check_in.csv', 'w') do 
		 		puts @time
		 	end
		 	else
		 		puts	"You are already checked in"
		end

		display_time
	end


	def display_time
		if @time[0].to_i >= 12
		 		puts "You are checked in at #{@time[0]}:#{@time[1]} AM"
		 	else
		 		puts "You are checked in at #{@time[0]} : #{@time[1]} PM"
		end

		@time
	end

	def check_out
		time = @time

		if File.exist?('./time_of_check_in.csv') == true
			CSV.open('./time_of_check_in.csv', 'r') do |x|
				@in =	x.to_a
			end
			
		end
	end
end



	mc = MissionControlCheck.new
	mc.check_out
	mc.check_out



