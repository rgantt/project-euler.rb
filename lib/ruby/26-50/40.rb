# this sucks
a = (1..210000).reduce{ |memo, obj| memo.to_s + obj.to_s }
puts [a[0], a[9], a[99], a[999], a[9999], a[99999], a[999999]].collect{ |i| i.to_i }.inject(:*)