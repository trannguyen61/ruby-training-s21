input = gets.chomp

splitted_input = input.split.map {|name| name[0].upcase + name[1..]}

last_name = splitted_input[0..-2].map {|name| name[0]}
first_name = splitted_input[-1]

res = "#{first_name}#{last_name.join('')}"
p res