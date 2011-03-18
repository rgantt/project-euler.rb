# find the largest palindrome made from 
# the product of two 3-digit numbers

min, max, palindrome = 100, 999, 0
(min..max).each do |i|
    (min..i).each do |j|
        val = i*j
        palindrome = val if val.to_s == val.to_s.reverse and val > palindrome
    end
end
puts palindrome