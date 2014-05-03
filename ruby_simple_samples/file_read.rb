# coding: utf-8

if ARGV[0].empty? then
	puts "Please input a file."
else
	File.open("./#{ARGV[0]}") do |f|
		puts f.read
	end
end