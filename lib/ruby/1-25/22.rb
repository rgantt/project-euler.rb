# what is the total of all the name scores in the file?
contents = File.open( File.dirname(__FILE__)+"/../fixtures/names.txt", 'rb' ){ |f| f.read }

def word_value( word )
	word.codepoints.collect{ |c| c - 64 }.inject(:+)
end

n, total = 1, 0
contents.gsub('"', "").split(',').sort.each do |name|
	total += n*word_value(name)
	n += 1
end
puts total