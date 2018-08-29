class PigLatinizer

  def initialize
  end

  def piglatinize_word(word)
  vowels = "aeiouyAEIOUY"
  letters = word.split("")
  if vowels.include?(word[0])
    word + "way"
  else
    first_vowel_index = letters.find_index do |letter|
      vowels.include?(letter)
    end
    word[first_vowel_index, word.length] + word[0, first_vowel_index] + "ay"
  end
end

 def piglatinize(string)
  words = string.split(" ")
  piglatinized_words = words.map do |word|
    piglatinize_word(word)
  end
  piglatinized_words.join(" ")
end


  # def letters_to_words(word)
  #   @vowels = ["a", "e", "i", "o", "u"]
  #   letters = word.split("")
  #   if word.start_with?("a", "e", "i", "o", "u", "I", "E", "O")
  #     word+"way"
  #   elsif @vowels.include?(letters[1])
  #     letters.push(letters.shift).join("") + "ay"
  #   elsif @vowels.include?(letters[2])
  #     letters.push(letters.shift(2)).join("") + "ay"
  #   else
  #     letters.push(letters.shift(3)).join("") + "ay"
  #   end
  # end
  #
  #  def piglatinize(string)
  #   words = string.split(" ")
  #   new_words = words.map do |word|
  #     letters_to_words(word)
  #   end
  #   new_words.join(" ")
  # end


end #end of class
