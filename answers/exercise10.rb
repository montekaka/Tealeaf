#10. Add to this hash the key:value pair {e:5}
h = {"a"=>1, "b"=>2, "c"=>3, "d"=>4}
h_new = {"e"=>5}
h.merge!(h_new)

puts h["e"]