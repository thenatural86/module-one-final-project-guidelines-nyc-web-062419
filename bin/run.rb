require_relative '../config/environment'
require 'JSON'
require 'rest-client'
require 'pry'
#require 'uri'
# require 'nest/http'
require 'rubygems'
require 'colorize' 


# attr_accessor :city

# def initialize(city)
# @city = city
# end
puts "
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
WWWWWWWW                           WWWWWWWWEEEEEEEEEEEEEEEEEEEEEE               AAA         TTTTTTTTTTTTTTTTTTTTTTTHHHHHHHHH     HHHHHHHHHEEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRR                       AAA               PPPPPPPPPPPPPPPPP   PPPPPPPPPPPPPPPPP   
W::::::W                           W::::::WE::::::::::::::::::::E              A:::A        T:::::::::::::::::::::TH:::::::H     H:::::::HE::::::::::::::::::::ER::::::::::::::::R                     A:::A              P::::::::::::::::P  P::::::::::::::::P  
W::::::W                           W::::::WE::::::::::::::::::::E             A:::::A       T:::::::::::::::::::::TH:::::::H     H:::::::HE::::::::::::::::::::ER::::::RRRRRR:::::R                   A:::::A             P::::::PPPPPP:::::P P::::::PPPPPP:::::P 
W::::::W                           W::::::WEE::::::EEEEEEEEE::::E            A:::::::A      T:::::TT:::::::TT:::::THH::::::H     H::::::HHEE::::::EEEEEEEEE::::ERR:::::R     R:::::R                 A:::::::A            PP:::::P     P:::::PPP:::::P     P:::::P
 W:::::W           WWWWW           W:::::W   E:::::E       EEEEEE           A:::::::::A     TTTTTT  T:::::T  TTTTTT  H:::::H     H:::::H    E:::::E       EEEEEE  R::::R     R:::::R                A:::::::::A             P::::P     P:::::P  P::::P     P:::::P
  W:::::W         W:::::W         W:::::W    E:::::E                       A:::::A:::::A            T:::::T          H:::::H     H:::::H    E:::::E               R::::R     R:::::R               A:::::A:::::A            P::::P     P:::::P  P::::P     P:::::P
   W:::::W       W:::::::W       W:::::W     E::::::EEEEEEEEEE            A:::::A A:::::A           T:::::T          H::::::HHHHH::::::H    E::::::EEEEEEEEEE     R::::RRRRRR:::::R               A:::::A A:::::A           P::::PPPPPP:::::P   P::::PPPPPP:::::P 
    W:::::W     W:::::::::W     W:::::W      E:::::::::::::::E           A:::::A   A:::::A          T:::::T          H:::::::::::::::::H    E:::::::::::::::E     R:::::::::::::RR               A:::::A   A:::::A          P:::::::::::::PP    P:::::::::::::PP  
     W:::::W   W:::::W:::::W   W:::::W       E:::::::::::::::E          A:::::A     A:::::A         T:::::T          H:::::::::::::::::H    E:::::::::::::::E     R::::RRRRRR:::::R             A:::::A     A:::::A         P::::PPPPPPPPP      P::::PPPPPPPPP    
      W:::::W W:::::W W:::::W W:::::W        E::::::EEEEEEEEEE         A:::::AAAAAAAAA:::::A        T:::::T          H::::::HHHHH::::::H    E::::::EEEEEEEEEE     R::::R     R:::::R           A:::::AAAAAAAAA:::::A        P::::P              P::::P            
       W:::::W:::::W   W:::::W:::::W         E:::::E                  A:::::::::::::::::::::A       T:::::T          H:::::H     H:::::H    E:::::E               R::::R     R:::::R          A:::::::::::::::::::::A       P::::P              P::::P            
        W:::::::::W     W:::::::::W          E:::::E       EEEEEE    A:::::AAAAAAAAAAAAA:::::A      T:::::T          H:::::H     H:::::H    E:::::E       EEEEEE  R::::R     R:::::R         A:::::AAAAAAAAAAAAA:::::A      P::::P              P::::P            
         W:::::::W       W:::::::W         EE::::::EEEEEEEE:::::E   A:::::A             A:::::A   TT:::::::TT      HH::::::H     H::::::HHEE::::::EEEEEEEE:::::ERR:::::R     R:::::R        A:::::A             A:::::A   PP::::::PP          PP::::::PP          
          W:::::W         W:::::W          E::::::::::::::::::::E  A:::::A               A:::::A  T:::::::::T      H:::::::H     H:::::::HE::::::::::::::::::::ER::::::R     R:::::R       A:::::A               A:::::A  P::::::::P          P::::::::P          
           W:::W           W:::W           E::::::::::::::::::::E A:::::A                 A:::::A T:::::::::T      H:::::::H     H:::::::HE::::::::::::::::::::ER::::::R     R:::::R      A:::::A                 A:::::A P::::::::P          P::::::::P          
            WWW             WWW            EEEEEEEEEEEEEEEEEEEEEEAAAAAAA                   AAAAAAATTTTTTTTTTT      HHHHHHHHH     HHHHHHHHHEEEEEEEEEEEEEEEEEEEEEERRRRRRRR     RRRRRRR     AAAAAAA                   AAAAAAAPPPPPPPPPP          PPPPPPPPPP          
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
        GGGGGGGGGGGGG     OOOOOOOOO     TTTTTTTTTTTTTTTTTTTTTTT     YYYYYYY       YYYYYYY     OOOOOOOOO     UUUUUUUU     UUUUUUUURRRRRRRRRRRRRRRRR        BBBBBBBBBBBBBBBBB               AAA                  CCCCCCCCCCCCCKKKKKKKKK    KKKKKKK                  
     GGG::::::::::::G   OO:::::::::OO   T:::::::::::::::::::::T     Y:::::Y       Y:::::Y   OO:::::::::OO   U::::::U     U::::::UR::::::::::::::::R       B::::::::::::::::B             A:::A              CCC::::::::::::CK:::::::K    K:::::K                  
   GG:::::::::::::::G OO:::::::::::::OO T:::::::::::::::::::::T     Y:::::Y       Y:::::Y OO:::::::::::::OO U::::::U     U::::::UR::::::RRRRRR:::::R      B::::::BBBBBB:::::B           A:::::A           CC:::::::::::::::CK:::::::K    K:::::K                  
  G:::::GGGGGGGG::::GO:::::::OOO:::::::OT:::::TT:::::::TT:::::T     Y::::::Y     Y::::::YO:::::::OOO:::::::OUU:::::U     U:::::UURR:::::R     R:::::R     BB:::::B     B:::::B         A:::::::A         C:::::CCCCCCCC::::CK:::::::K   K::::::K                  
 G:::::G       GGGGGGO::::::O   O::::::OTTTTTT  T:::::T  TTTTTT     YYY:::::Y   Y:::::YYYO::::::O   O::::::O U:::::U     U:::::U   R::::R     R:::::R       B::::B     B:::::B        A:::::::::A       C:::::C       CCCCCCKK::::::K  K:::::KKK                  
G:::::G              O:::::O     O:::::O        T:::::T                Y:::::Y Y:::::Y   O:::::O     O:::::O U:::::D     D:::::U   R::::R     R:::::R       B::::B     B:::::B       A:::::A:::::A     C:::::C                K:::::K K:::::K                     
G:::::G              O:::::O     O:::::O        T:::::T                 Y:::::Y:::::Y    O:::::O     O:::::O U:::::D     D:::::U   R::::RRRRRR:::::R        B::::BBBBBB:::::B       A:::::A A:::::A    C:::::C                K::::::K:::::K                      
G:::::G    GGGGGGGGGGO:::::O     O:::::O        T:::::T                  Y:::::::::Y     O:::::O     O:::::O U:::::D     D:::::U   R:::::::::::::RR         B:::::::::::::BB       A:::::A   A:::::A   C:::::C                K:::::::::::K                       
G:::::G    G::::::::GO:::::O     O:::::O        T:::::T                   Y:::::::Y      O:::::O     O:::::O U:::::D     D:::::U   R::::RRRRRR:::::R        B::::BBBBBB:::::B     A:::::A     A:::::A  C:::::C                K:::::::::::K                       
G:::::G    GGGGG::::GO:::::O     O:::::O        T:::::T                    Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U   R::::R     R:::::R       B::::B     B:::::B   A:::::AAAAAAAAA:::::A C:::::C                K::::::K:::::K                      
G:::::G        G::::GO:::::O     O:::::O        T:::::T                    Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U   R::::R     R:::::R       B::::B     B:::::B  A:::::::::::::::::::::AC:::::C                K:::::K K:::::K                     
 G:::::G       G::::GO::::::O   O::::::O        T:::::T                    Y:::::Y       O::::::O   O::::::O U::::::U   U::::::U   R::::R     R:::::R       B::::B     B:::::B A:::::AAAAAAAAAAAAA:::::AC:::::C       CCCCCCKK::::::K  K:::::KKK                  
  G:::::GGGGGGGG::::GO:::::::OOO:::::::O      TT:::::::TT                  Y:::::Y       O:::::::OOO:::::::O U:::::::UUU:::::::U RR:::::R     R:::::R     BB:::::BBBBBB::::::BA:::::A             A:::::AC:::::CCCCCCCC::::CK:::::::K   K::::::K                  
   GG:::::::::::::::G OO:::::::::::::OO       T:::::::::T               YYYY:::::YYYY     OO:::::::::::::OO   UU:::::::::::::UU  R::::::R     R:::::R     B:::::::::::::::::BA:::::A               A:::::ACC:::::::::::::::CK:::::::K    K:::::K                  
     GGG::::::GGG:::G   OO:::::::::OO         T:::::::::T               Y:::::::::::Y       OO:::::::::OO       UU:::::::::UU    R::::::R     R:::::R     B::::::::::::::::BA:::::A                 A:::::A CCC::::::::::::CK:::::::K    K:::::K                  
        GGGGGG   GGGG     OOOOOOOOO           TTTTTTTTTTT               YYYYYYYYYYYYY         OOOOOOOOO           UUUUUUUUU      RRRRRRRR     RRRRRRR     BBBBBBBBBBBBBBBBBAAAAAAA                   AAAAAAA   CCCCCCCCCCCCCKKKKKKKKK    KKKKKKK                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                "


 @city = nil

puts "\n"
puts "*****************************".red.blink
puts "*Welcome to the Weather App!*".blue.blink
puts "*****************************".red.blink
puts "\n"
puts "Please enter your name."
input = gets.chomp
user_response = User.find_or_create_by(user_name: input)


# begin_weather 
menu
# the_name
# option_one
puts "\n"
puts "#{user_response.user_name}, what would you like to do?"
puts "\n"
choice = gets.chomp.to_i
# binding.pry
    
 choice = default_response(choice)
  
 while choice < 7
  case choice
    
    
  when 1
  # case choice
  # option_one
    puts "Excellent choice #{user_response.user_name}!!! Please enter your city of choice. "
    city_input = gets.chomp
    
    searchedCity = RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=#{city_input}&appid=ebf9477d55487b4ca83294bf1aa1af97")
    
    json_weather = JSON.parse(searchedCity)
    conv_temp = (1.8 * (json_weather["main"]["temp"] - 273.15).to_i + 32).to_i
    @city = Location.find_by(name: json_weather["name"])
    if @city 
      @city.update(description: json_weather["weather"][0]["description"], temp: conv_temp)
    else 
      @city = Location.create(name: json_weather["name"], description: json_weather["weather"][0]["description"], temp: conv_temp)
    end
    system "clear"
    puts "\n"
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".cyan
    puts "$$                                                                          $$".cyan
    puts "$$$                                  #{json_weather["name"]}                              $$$".upcase.cyan
    puts "$$                          The temperature is #{conv_temp}.                     $$$".upcase.cyan
    puts "$$$                 The forecast for today is: #{json_weather["weather"][0]["description"]}                 $$$".upcase.cyan
    puts "$$                                                                        $$$$".cyan
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".cyan
    puts "\n"
    
    menu
    puts "What would you like to do next?"
      choice = gets.chomp.to_i 
    # end

     when 2
    #  option_two

      puts "Are you sure you want to save this to your list? (y/n) "
      yes_no_input = gets.chomp
      case yes_no_input
      when yes_no_input = "y"
        new_location = UserLocation.find_or_create_by(user_id: user_response.id, location_id: @city.id)
        # user_response.location_id = choice_id
        puts "You did it!"
        
      when yes_no_input = "n"
        puts "Silly rabbit, trix are for kids!"
        puts "\n"
      end
      puts "What would you like to do next #{user_response.user_name}?"
        puts "\n"
        
        choice = gets.chomp.to_i
    when 3 
      # option_three  
    
        puts "Here is the list of all the cool cities you've selected. Check it out!"
        puts " "
        puts "The List"
    
        UserLocation.select{|user_location| user_location.user_id == user_response.id}.each_with_index {|user_location, index| 
        # puts Location.find(user_location.location_id).name}
        # UserLocation.all.select {|userlocations| userlocations.user_id == user_response.id}.each_with_index do |userlocation, index| list_location = Location.find(userlocation.location_id)
        #   binding.pry
        
          puts "#{index + 1}.#{user_location.location.name}"}
         
          menu
        #   
        # endn
        puts " "
        puts "What would you like to do next #{user_response.user_name}?"
        choice =gets.chomp.to_i
  when 4

    puts "It's time to delete some shit!"
    puts "Please enter the city you would like to delete."
    delete_choice = gets.chomp
    user_location_to_delete_choice = Location.find_by(name: delete_choice) 
    if user_location_to_delete_choice == nil
    puts "Silly Billy, this location isn't in your list. "
    menu
    else
      to_delete = UserLocation.find_by(location_id: user_location_to_delete_choice.id, user_id: user_response.id)
        if to_delete != nil
          to_delete.destroy
          puts "Deleted!"
        else
          puts "Silly Billy, this location isn't in your list. "
        end
      puts " "
      puts "What would you like to do next?"
      
      menu
      choice = gets.chomp.to_i
    end
    
  

  when 5
    
    break
  

  when 6
    menu
    puts "Wrong input, try again."
    choice = gets.chomp.to_i
  

end

end






puts "Ok bye bye!"
system "clear"
