# # def option2
# #   puts "Are you sure you want to save this to your list? (y/n) "
# #       yes_no_input = gets.chomp
# #       case yes_no_input
# #       when yes_no_input = "y"
# #         new_location = UserLocation.find_or_create_by(user_id: user_response.id, location_id: @city.id)
# #         # user_response.location_id = choice_id
# #         puts "You did it!"
        
# #       when yes_no_input = "n"
# #         puts "Silly rabbit, trix are for kids!"
# #         puts "\n"
# #       end
# #       puts "What would you like to do next #{user_response.user_name}?"
# #         puts "\n"
        
# #         choice = gets.chomp.to_i
# # end

# def begin_weather

#   # @city = nil
  
#   puts "\n"
#   puts "*****************************".red.blink
#   puts "*Welcome to the Weather App!*".blue.blink
#   puts "*****************************".red.blink
#   puts "\n"
#   puts "Please enter your name."
#   input = gets.chomp
#   user_response = User.find_or_create_by(user_name: input)
#   menu
#   puts "\n"
#   puts "#{user_response.user_name}, what would you like to do?"
#   puts "\n"

  
#   end


def menu
  puts "******************************".yellow
  puts "            Menu              ".yellow
  puts "******************************".yellow
  puts "\n"
  puts "****       1)City          ****".cyan
  puts "\n"
  puts "****  2)Save Location?    ****".cyan
  puts "\n"
  puts "**** 3) Show Location List  ****".cyan
  puts "\n"
  puts "****  4) Delete Location   ****".cyan
  puts "\n"
  puts "****      5) Exit         ****".cyan
  puts "\n"
  puts "******************************".yellow
end

# # def the_name
# # puts "\n"
# # puts "#{user_response.user_name}, what would you like to do?"
# # puts "\n"
# # choice = gets.chomp.to_i
# # end

# # choice = default_response(choice)
# # while choice < 7

# def option_one
  
#   # case choice
#   # when 1
#     puts "Excellent choice #{user_response.user_name}!!! Please enter your city of choice. "
#     city_input = gets.chomp
    
#     searchedCity = RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=#{city_input}&appid=ebf9477d55487b4ca83294bf1aa1af97")
    
#     json_weather = JSON.parse(searchedCity)
#     conv_temp = (1.8 * (json_weather["main"]["temp"] - 273.15).to_i + 32).to_i
#     @city = Location.find_by(name: json_weather["name"])
#     if @city 
#       @city.update(description: json_weather["weather"][0]["description"], temp: conv_temp)
#     else 
#       @city = Location.create(name: json_weather["name"], description: json_weather["weather"][0]["description"], temp: conv_temp)
#     end
#     system "clear"
#     puts "\n"
#     puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".cyan
#     puts "$$                                                                          $$".cyan
#     puts "$$$                                  #{json_weather["name"]}                              $$$".upcase.cyan
#     puts "$$                          The temperature is #{conv_temp}.                     $$$".upcase.cyan
#     puts "$$$                 The forecast for today is: #{json_weather["weather"][0]["description"]}                 $$$".upcase.cyan
#     puts "$$                                                                        $$$$".cyan
#     puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".cyan
#     puts "\n"
#   end

# # when 2
#   def option_two
#     # option2
#     puts "Are you sure you want to save this to your list? (y/n) "
#     yes_no_input = gets.chomp
#     case yes_no_input
#     when yes_no_input = "y"
#       new_location = UserLocation.find_or_create_by(user_id: user_response.id, location_id: @city.id)
#       # user_response.location_id = choice_id
#       puts "You did it!"
      
#     when yes_no_input = "n"
#       puts "Silly rabbit, trix are for kids!"
#       puts "\n"
#     end
#     puts "What would you like to do next #{user_response.user_name}?"
#       puts "\n"
      
#       choice = gets.chomp.to_i
#   end

#   def option_three
#     puts "Here is the list of all the cool cities you've selected. Check it out!"
    
#         UserLocation.select{|user_location| user_location.user_id == user_response.id}.each_with_index {|user_location, index| 
#         # puts Location.find(user_location.location_id).name}
#         # UserLocation.all.select {|userlocations| userlocations.user_id == user_response.id}.each_with_index do |userlocation, index| list_location = Location.find(userlocation.location_id)
#         #   binding.pry
#           puts "#{index + 1}.#{user_location.location.name}"}
         
#         #   menu
#         #   
#         # end
#         puts "What would you like to do next #{user_response.user_name}?"
#         choice =gets.chomp.to_i

#   end








# def ask_for_city 
#   puts 'give me a city'
#   city_name_entered = gets.chomp
#   city = Location.find_by(name: city_name_entered)

#   if city
#     city
#   else
#     city_name_entered
#   end
# end

