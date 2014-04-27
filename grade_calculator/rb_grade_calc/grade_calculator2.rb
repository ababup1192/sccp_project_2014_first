require "csv"

table = CSV.table('grade.csv')
grade_list  = table.headers.map do |e|
	table[e].inject(0){|sum, elm| sum + elm}
end

sum = grade_list.inject(0){|sum, elm| sum + elm}
avg = sum / (table.size * table.headers.size).to_f

puts "sum = #{sum}"
puts "sum = #{avg}"