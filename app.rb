require 'bundler'
Bundler.require

Dir["./lib/*"].each {|file| require file }

module Birthday

	class Date < Sinatra::Application

		get '/' do
			erb :today
		end

		post '/results' do
			date = Birthdate.new(params)
			date.convert_answer
			date.compare
		
			# if @converted == @answer
			# 	erb :birthday
			# else
			# 	erb :not_birthday
			# end
			erb :results
		end

	end#<---this is the end of the class

end#<---this is the end of the module