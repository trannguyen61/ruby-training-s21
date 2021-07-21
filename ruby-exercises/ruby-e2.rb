begin
    n = Integer(gets.chomp)
rescue ArgumentError => exception
    p 'Please insert a number.'
else
    array = []

    n.times do
        array.push(gets.chomp)
    end

    hash = Hash.new
    array.each {|num| hash.key?(num) ? hash[num] += 1 : hash[num] = 1}
    p hash.sort_by {|key, value| value}.to_h
end
