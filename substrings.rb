def substring(message, dictionary)
    output = Hash.new
    user_words = message.split(' ')

    dictionary.each do |word|
        user_words.each do |compairison|
            match = compairison.scan(word)
            if !match.empty? && !output.include?(match)
                output[match] = 1
            elsif !match.empty? && output.include?(match)
                output[match] += 1
            end
        end
    end
    
    return output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print "Enter Message: "
message = gets.chomp.strip.downcase

puts "Output: " + substring(message, dictionary).to_s