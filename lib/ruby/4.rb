# 9009 = 91 x 99
palindromes = []
(100..999).each do |i|
    (100..999).each do |j|
        val = i*j
        palindromes << val if val.to_s == val.to_s.reverse
    end
end
puts palindromes.each{ |s| s = s.to_i }.max