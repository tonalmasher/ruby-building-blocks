def caeser_cipher(string, shift)

  cipher = ""

  string.split("").each do | char |

   charValue = char.ord

    if charValue.between?(65,90)
      charValue += shift
      charValue > 90 ? charValue -= 26 : charValue

    elsif charValue.between?(97,122)
      charValue += shift
      charValue > 122 ? charValue -= 26 : charValue
    else

    end
    cipher << charValue.chr
  end

  return cipher

end

puts "What's your messsage that you would like encrypted? "
message = gets.chomp

puts "What shift factor would you like? (0-25)"

while shift = gets.chomp.to_i
  if shift.between?(0,25)
    puts "Here's your message: \n#{caeser_cipher(message, shift)}"
    break
  else
    puts "Please keep the shift factor between 0 and 25. Try again: "
  end
end
