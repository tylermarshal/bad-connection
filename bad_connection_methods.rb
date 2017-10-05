class customer
def initialize(input)
  @input = input
end

def receive_response(input)
  ready_to_quit = false
  goodbye_count = 0
  until ready_to_quit == true
    if input == ""
      blank_response(input)
      input = gets.chomp
    elsif input.count('a-z') > 0
      lowercase_response(input)
      input = gets.chomp
    elsif input.count('a-z') == 0 && input.count('?') > 0
      uppercase_resonse(input)
      input = gets.chomp
    elsif input == "GOODBYE!"
      if goodbye_count == 0
        first_goodbye_response(input)
        goodbye_count += 1
        input = gets.chomp
      else
        puts "THANK YOU FOR CALLING!"
        ready_to_quit = true
      end
    end
  end
end

def blank_response(input)
  puts "Hello?"
end

def lowercase_response(input)
  puts "I AM HAVING A HARD TIME HEARING YOU."
end

def uppercase_resonse(input)
  puts "NO, THIS IS NOT A PET STORE"
end

def first_goodbye_response(input)
  puts "ANYTHING ELSE I CAN HELP WITH?"
end
end

puts "HELLO, THIS IS A GROCERY STORE!"

input = gets.chomp
receive_response(input)
