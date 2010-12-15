words = []
word = 'Write a lot of words and end it with a blank line'
puts word
while word != ''
  word = gets.chomp
  words.push word
end
puts 'The words you typed in in alphabetic order:'
puts words.sort
sortarray = []
puts sortarray.length
puts words.length
while sortarray.length==words.length
  0..words.length do |i|
    if words[i].downcase > sortarray.last
      sortarray.push words[i]
    else
      if words[i].downcase < sortarray.last
        sortarray.pop
        sortarray.push words[i]
      end
    end
  end
end
puts sortarray
