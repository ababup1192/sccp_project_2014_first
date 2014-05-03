words = []

File::open("./ConstitutionOfJapan.txt") do |f|
	f.each do |line|
		words.push(line.scan(/[\w&&\D]+/).map(&:downcase))
	end
end

hash = Hash.new()
words_list = words.flatten.sort
word_list = words_list.uniq

words_list.each do |word|
	if hash.key?(word)
		hash[word] = hash[word] + 1
	else
		hash[word] = 1
	end
end

word_list.each do |w|
	puts "#{w} #{hash[w]}"
end