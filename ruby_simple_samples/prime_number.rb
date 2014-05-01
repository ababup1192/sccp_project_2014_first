# coding: utf-8

(2..100).each do |candidate|
	sqrt = Math.sqrt(candidate)
	factor_found = (2..sqrt).any? {|i| candidate % i == 0}

	if factor_found then
		puts "#{candidate}は合成数"
	else
		puts "#{candidate}は素数"
	end
end