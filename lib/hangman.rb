
lines = File.readlines('10000_words.txt')

def sort_words(lines)
  lines.each do |line|

    if line.length > 5 and line.length <= 13

      line
    end

  end

end

def select_word(sort_words)
  random = rand(sort_words.length)
  sort_words[random]
end

Letters = select_word(sort_words(lines)).to_s.split('').to_a

def hide_word(letters)
  Letters.each_with_index do |letter,index|
    board = print " |#{index + 1}| " unless index == (letters.length - 1)
  end

end

puts''

hide_word(Letters)

puts ''

puts ''

puts "Please choose 1 letter (game over if you select more than 1 letter):"

input = gets.chomp


def compare(input,letters)
  if Letters.include?(input)
      found = Letters.find_index(input)

      show = Letters[found]

      puts "#{input} was found in space number #{found + 1}"

    else
      puts "#{input} is not found, try again!"
  end

end

until input.length > 1 do
  compare(input,Letters)

  puts''

  puts "Choose a letter:"

  input = gets.chomp
end

if input.length >= 2
  puts ''

  puts 'Game Over'

  puts ''

  puts 'The word was:'

  puts Letters.join('')

  puts ' '
end
