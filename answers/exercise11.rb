#13. Remove all key:value pairs whose value is less than 3.5

h = {"a"=>1, "b"=>2, "c"=>3, "d"=>4}
h_new = {"e"=>5}
h.merge!(h_new)

h.delete_if{|key, value| value < 3.5}