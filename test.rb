def array_of_bays 
  ['a10', 'a9', 'a8', 'a7', 'a6', 'a5', 'a4', 'a3', 'a2', 'a1', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9', 'c10', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'b9', 'b10']
end

def hash_of_bays
 { 0 => "rubber band", 1 => "glow stick",  2 => "model car", 3 => "bookmark", 4 => "shovel", 5 => "rubber duck", 6 => "hanger", 7 => "blouse", 8 => "stop sign", 9 => "needle", 10 => "rusty nail", 11 => "drill press", 12 => "chalk", 13 => "word search", 14 => "thermometer", 15 => "face wash", 16 => "paint brush", 17 => "candy wrapper", 18 => "shoe lace", 19 => "leg warmers", 20 => "tire swing", 21 => "sharpie", 22 => "picture frame", 23 => "photo album", 24 => "nail filer", 25 => "tooth paste", 26 => "bath fizzers", 27 => "tissue box", 28 => "deodorant", 29 => "cookie jar"}
end

def get_bay
  puts "Please type in which bay you need e.g a1 a2 a3"
  bays = gets.chomp

  ind_bays = bays.split(" ")

 array_of_indexes = ind_bays.map do |bay|
    array_of_bays.index(bay)
  end
sorted_array_of_indexes = array_of_indexes.sort
distance_traveled = sorted_array_of_indexes.last - sorted_array_of_indexes.first

array_of_chosen_items = hash_of_bays.values_at(*array_of_bays).compact
print array_of_chosen_items
puts "The distance between the requested bays is #{distance_traveled}"
puts "The items you requested are #{array_of_chosen_items}"
end


get_bay






