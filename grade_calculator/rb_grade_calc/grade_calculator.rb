
def main
	score_hash = input
	sum_hash = calc_summation(score_hash["scores_list"])
	size = score_hash["row"] * sum_hash["col"]
	ave = calc_average(sum_hash["sum"], size)
	puts "sum = #{sum_hash["sum"]}"
	puts "ave = #{ave}"
end

def input
	data = File.read('grade.csv')
	headers, *scores_list = data.lines.map do |line|
		line.chomp.split(',')
	end
	{"scores_list" => scores_list, "row" => scores_list.size}
end

def calc_summation(scores_list)
	sum = 0
	col = 0

	scores_list.each do |scores|
		scores.each do|score|
			col = scores.size
			sum += score.to_i
		end
	end
	{"sum" => sum, "col" => col}
end

def calc_average(sum, size)
	sum.to_f.quo(size)
end

main