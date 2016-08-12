puts "Please enter text"
text = gets.chomp

# Split the text into an array
words = text.split(" ")

# Create a hash and give it a default value of 0
frequencies = Hash.new(0)

=begin
Iterate over the words array and. For each word we find, assume that the word itself is a key in frequencies and increment its value by 1. This is why our default is 0. The first time we find the word, it will have a default value of 0 that we can increment up to 1.
=end
words.each do |word|
    frequencies[word] += 1
end

=begin
Sort the frequencies hash by word count. Store the result back in frequencies.
=end
frequencies = frequencies.sort_by do |word, count|
    count
end

# Reverse the sorted frequencies array.
frequencies.reverse!

=begin
Iterate over .each key/value pair in the frequencies hash. Then, puts each word, a single space, and its frequency to the console. Note that we must first convert the value from a number to a string using .to_s before we can concatenate it.
=end
frequencies.each do |word, count|
    puts word + " " + count.to_s
end