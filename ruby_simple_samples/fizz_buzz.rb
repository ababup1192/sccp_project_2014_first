(1..100).each do |i|
	case i % 15
	when 0 				then puts "FizzBuzz"
	when 3, 6, 9, 12 	then puts "Fizz"
	when 5, 100 		then puts "Buzz"
	else 					 puts i
	end
end