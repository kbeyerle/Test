
words = IO.read("homework_one_text.txt").split(/\s+/)
#puts words

pattern = /@(\w+\.\w+)/
word_frequency = Hash.new(0)

words.each do |word|
  if word.include? "@"
    result = word.match(pattern)
    #puts result[1]
    word_frequency[result[1].downcase] += 1
  end

end

word_frequency = word_frequency.sort

#p word_frequency

puts "Domain Results\n=============================="

word_frequency.each do |domain,times|
  puts "#{domain}: #{times} time(s)".rjust(31)
end