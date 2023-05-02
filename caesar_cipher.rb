def encrypt(string, shift_factor)
    split_string = string.split('').map {|char| char.ord + shift_factor}
    encrypted_string = split_string.map {|num| num.chr}.join('')
end

def decipher(string, shift_factor)
    split_string = string.split('').map {|char| char.ord - shift_factor}
    deciphered_string = split_string.map {|num| num.chr}.join('')
end

print "Encrypt Or Decipher? (e/d): "
while action = gets.chomp.strip
    if action == 'e' || action == 'd'
        break
    else
        print "Please Enter 'd' Or 'e', Try Again: "
    end
end

print "Enter Shift Value: "
while shift = gets.chomp.strip.to_i
    if shift == 0
        print "Please Enter Valid Number, Try again: "
    else
        break
    end
end

print "Enter Message: "
message = gets.chomp.strip

if action == 'e'
    puts "\r\nEncrypted Message: " + encrypt(message, shift)
elsif action == 'd'
    puts "\r\nDeciphered Message: " + decipher(message, shift)
end