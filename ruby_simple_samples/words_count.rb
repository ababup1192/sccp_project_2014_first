
if ARGV[0].empty? then
	puts "Please input a file."
else
	words = []
	File::open("./#{ARGV[0]}") do |f|
		f.each do |line|
			words.push(line.scan(/[\w&&\D]+/).map(&:downcase))
		end
	end

	word_hash = Hash.new()
	words_list = words.flatten.sort

	words_list.each do |word|
		if word_hash.key?(word)
			word_hash[word] = word_hash[word] + 1
		else
			word_hash[word] = 1
		end
	end

	word_hash.each do |key, value|
		puts "#{key} #{value}"
	end
end