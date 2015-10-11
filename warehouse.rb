def array_of_items
  ['rubber band', 'glow stick', 'model car', 'bookmark', 'shovel', 'rubber duck', 'hanger', 'blouse', 'stop sign', 'needle', 'rusty nail', 'drill press', 'chalk', 'word search', 'thermometer', 'face wash', 'paint brush', 'candy wrapper', 'shoe lace', 'leg warmers', 'tire swing', 'sharpie', 'picture frame', 'photo album', 'nail filer', 'tooth paste', 'bath fizzers', 'tissue box', 'deodorant', 'cookie jar']
end

def hash_of_bays
 { 0 => "a10", 1 => "a9",  2 => "a8", 3 => "a7", 4 => "a6", 5 => "a5", 6 => "a4", 7 => "a3", 8 => "a2", 9 => "a1", 10 => "c1", 11 => "c2", 12 => "c3", 13 => "c4", 14 => "c5", 15 => "c6", 16 => "c7", 17 => "c8", 18 => "c9", 19 => "c10", 20 => "b1", 21 => "b2", 22 => "b3", 23 => "b4", 24 => "b5", 25 => "b6", 26 => "b7", 27 => "b8", 28 => "b9", 29 => "b10"}
end

def array_of_bays 
  ['a10', 'a9', 'a8', 'a7', 'a6', 'a5', 'a4', 'a3', 'a2', 'a1', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9', 'c10', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'b9', 'b10']
end

def hash_of_items
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

array_of_chosen_items = hash_of_items.values_at(*sorted_array_of_indexes).compact

puts "The distance between the requested bays is #{distance_traveled}"
puts "The items you requested are #{array_of_chosen_items}"
end

def get_items
  puts "Please type in which items you need e.g leg warmers,tire swing,cookie jar"
  items = gets.chomp

  picked_array_of_items = items.split(",")

array_of_item_indexes = picked_array_of_items.map do |item|
  array_of_items.index(item)
end

sorted_array_of_item_indexes = array_of_item_indexes.sort

array_of_chosen_bays = hash_of_bays.values_at(*sorted_array_of_item_indexes).compact

puts "The requested bays are #{array_of_chosen_bays}"
end

get_items








