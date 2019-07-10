class Interface

    def self.start_screen
        system "clear"
        puts <<-start
            1) Log in
            2) Create Account
        start

        print "Select option: "
        option = gets.chomp

        case option
        when "1"
            self.LogIn
        when "2"
            self.create_account
        end
    end

    def self.create_account
        print "Enter email: "
        email = gets.chomp
        print "Create password: "
        password = gets.chomp
        print "Create Username: "
        username = gets.chomp

        User.create(email: email,username: username,password: password)

        self.accountgreet
    end

    def self.LogIn
        print "Enter your email: "
        log_in_email = gets.chomp
        print "Enter password :"
        log_in_password = gets.chomp
        print "Create Username: "
        username = gets.chomp

        User.find_or_create_by(username: username, password: log_in_password, email: log_in_email)

        self.accountgreet
    end

    def self.accountgreet
        system  "clear"
        puts <<-CLI
            1) Location
            2) Saved Locations
            3) Delete Location
            4) Update Account
            5) Log out
        CLI
        print "What is your choice: "
        choice = gets.chomp

        case choice
        when "1"
             pick_location 
        when "2"
             saved_locations
        when "3"
             delete_location
        when "4"
             update_account
        when "5"
             log_out
        end
    end

    def self.pick_location
        system "clear"
        print "Enter city location: "
        city = gets.chomp

        response_string = RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=ebf9477d55487b4ca83294bf1aa1af97")

        response_hash = JSON.parse(response_string)

        fahr_temp = (((response_hash['main']['temp']) - 273.15) * 9/5 + 32).to_i
        main = response_hash['weather'][0]['main']
        description = response_hash['weather'][0]['description']
        

        puts "The conditions are #{main} with #{description}"
        puts "The temperature is #{fahr_temp}"
        print "1) Save Location 2) Return to main menu:"
        select = gets.chomp

        case select
        when "1"
            Location.find_or_create_by(name: city,temp: fahr_temp, main: main, description: description)
            binding.pry
            self.accountgreet
        when "2"
            self.accountgreet
        end


    end

    

    def self.log_out
        system "clear"
        puts "Thank you and have a great day"
    end
    
end