

def array_of_items
  ['rubber band', 'glow stick', 'model car', 'bookmark', 'shovel', 'rubber duck', 'hanger', 'blouse', 'stop sign', 'needle', 'rusty nail', 'drill press', 'chalk', 'word search', 'thermometer', 'face wash', 'paint brush', 'candy wrapper', 'shoe lace', 'leg warmers', 'tire swing', 'sharpie', 'picture frame', 'photo album', 'nail filer', 'tooth paste', 'bath fizzers', 'tissue box', 'deodorant', 'cookie jar']
end

def hash_of_bays
 { 0 => "a10", 1 => "a9",  2 => "a8", 3 => "a7", 4 => "a6", 5 => "a5", 6 => "a4", 7 => "a3", 8 => "a2", 9 => "a1", 10 => "c1", 11 => "c2", 12 => "c3", 13 => "c4", 14 => "c5", 15 => "c6", 16 => "c7", 17 => "c8", 18 => "c9", 19 => "c10", 20 => "b1", 21 => "b2", 22 => "b3", 23 => "b4", 24 => "b5", 25 => "b6", 26 => "b7", 27 => "b8", 28 => "b9", 29 => "b10"}
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

#get the indexes of the items
#then sort the indexes based on the new array
#then then print out the bays based on a new hash.
 #array_of_indexes = ind_bays.map do |bay|
 #   array_of_bays.index(bay)
 # end
#sorted_array_of_indexes = array_of_indexes.sort
#distance_traveled = sorted_array_of_indexes.last - sorted_array_of_indexes.first

#array_of_chosen_items = hash_of_bays.values_at(*sorted_array_of_indexes).compact

#puts "The distance between the requested bays is #{distance_traveled}"
#puts "The items you requested are #{array_of_chosen_items}"
end

get_items