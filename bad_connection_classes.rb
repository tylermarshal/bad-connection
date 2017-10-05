class Customer
  def initialize(input)
    @input = input
  end

  def give_response(input)
    ready_to_quit = false
    goodbye_count = 0
    until ready_to_quit == true
      if @input == ""
        blank_response
        @input = gets.chomp
      elsif @input.count('a-z') > 0
        lowercase_response
        @input = gets.chomp
      elsif @input.count('a-z') == 0 && @input != "GOODBYE!"
        uppercase_response
        @input = gets.chomp
      elsif @input == "GOODBYE!"
        if goodbye_count == 0
          first_goodbye_response
          goodbye_count += 1
          @input = gets.chomp
        else
          puts "THANK YOU FOR CALLING!"
          ready_to_quit = true
        end
      end
    end
  end

  def blank_response
    puts "Hello?"
  end

  def lowercase_response
    puts "I AM HAVING A HARD TIME HEARING YOU."
  end

  def uppercase_response
    puts "NO, THIS IS NOT A PET STORE"
  end

  def first_goodbye_response
    puts "ANYTHING ELSE I CAN HELP WITH?"
  end
end

puts "HELLO, THIS IS A GROCERY STORE!"

input = gets.chomp
# require 'pry'; binding.pry
customer_service_response = Customer.new(input)
customer_service_response.give_response(input)
