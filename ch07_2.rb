word = 'Type as many words as you want and end your entries with a blank line'
words = []

puts word

until word == ''
  word = gets.chomp
  words.push word
end

puts 'Your typed words in alphabetic order:'

puts words.sort {|a,b| a.downcase <=> b.downcase}

puts '----'

sortwords = []
tempsort = []

words.each do |sortw|

  if sortwords.length == 0
    sortwords.push sortw
  end

  while sortw.downcase < sortwords.last.downcase
    tempsort.push sortwords.last
    sortwords.pop
    break if sortwords.length == 0
  end

  sortwords.push sortw

  until tempsort.length == 0
    sortwords.push tempsort.last
    tempsort.pop

  end

end

puts sortwords