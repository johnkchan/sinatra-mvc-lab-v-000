class PigLatinizer
  
  def piglatinize(user_phrase)
  user_phrase = user_phrase.split(" ")
  user_phrase.each_with_index do |phrase, index|
<<<<<<< HEAD
    if phrase[0].downcase =~ /[aeiou]/ 
      user_phrase[index] = phrase + "way"
=======
    if index == 0 && phrase[0].downcase =~ /[aeiou]/ 
      user_phrase[index] = phrase + "way"
      break
>>>>>>> 95794a206d6869d439a3079c533a0e56c5a78f10
    else
      beginning = ""
      count = 0
      phrase.split('').each do |letter|
        if letter.downcase !~ /[aeiou]/
<<<<<<< HEAD
          beginning += letter
=======
          beginning += letter.downcase
>>>>>>> 95794a206d6869d439a3079c533a0e56c5a78f10
          count += 1
        else
          break
        end
      end
      user_phrase[index] = phrase[count..(phrase.length-1)] + beginning + "ay"
    end
  end
  user_phrase.join(" ")
end
  
end