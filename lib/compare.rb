require 'Time'

class Birthdate


	attr_accessor :convert_answer, :compare

	def initialize(params)
	# def initialize
		params = {"month" => "10", "date" => "05"}
		@month = params["month"].to_i
		@date = params["date"].to_i
	end

	def convert_answer
		@converted = @month + @date
	end

	def compare
		t = Time.new
		t_2 = t.strftime("%I:%M")
		time_split = t_2.split(/(.*)\:(.*)/)
		split_hour = time_split[1].to_i
		split_minute = time_split[2].to_i
		@answer = split_hour + split_minute

		# if @converted == answer
		# 	puts "woo hoo!"
		# else 
		# 	puts "you worked around it!"
		# end


	end

	


end #<--this is the end of the class!



# date = Birthdate.new
# p date.convert_answer
# p date.compare