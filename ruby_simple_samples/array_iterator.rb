array = ["a", "b", "c"]
p array.length
p array *= 2

p array.include? "c"
p array.sort
p array
p array.uniq

array = ["a", "b", "c"]
array.each do |item|
	puts item
end