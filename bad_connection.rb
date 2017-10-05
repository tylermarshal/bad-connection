ready_to_quit = false
puts "HELLO, THIS IS A GROCERY STORE!"
goodbye_count = 0

input = gets.chomp
until ready_to_quit
  if input == ""
    puts "Hello?"
    input = gets.chomp
  elsif input.count('a-z') > 0
    puts "I AM HAVING A HARD TIME HEARING YOU."
    input = gets.chomp
  elsif input.count('a-z') == 0 && input.count('?') > 0
    puts "NO, THIS IS NOT A PET STORE"
    input = gets.chomp
  elsif input == "GOODBYE!"
    if goodbye_count == 0
      puts "ANYTHING ELSE I CAN HELP WITH?"
      goodbye_count += 1
      input = gets.chomp
    else
      ready_to_quit = true
    end
  end
end

puts "THANK YOU FOR CALLING!"
