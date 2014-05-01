acids = ["Adenin", "Thymine", "Guanine", "Cytosine"]

signs = acids.map{|acids| acids[0, 1]}
p signs

p acids.map{|a| a.downcase}
p acids.map(&:upcase)