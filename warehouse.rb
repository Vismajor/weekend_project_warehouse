def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** WAREHOUSE ***"
  puts "Welcome, young hero, at the Wondrous Artefacts, Rare Effigies, Hilariously Obscene and Useless Specific Equipment, or WAREHOUSE for short."
  puts "Please tell our quaint little shop assistant gnomes how would you like to browse our wares. Since they are a bit slow, please be patient and very specific."
  puts         "
             .-'  
            /   <\|
           /     \'
           |_.- o-o
           / C  -._)\

          /',        |
         |   `-,_,__,'
         (,,)====[_]=|
           '.   ____/
            | -|-|_
            |____)_)"
  print "Shop by checking the (b)oxes, (t)ell us what do you need for your adventures, or you can (l)eave the shop."
  get_string
end

def pause
  puts "press enter to continue"
  gets
end

def get_string
  gets.chomp.downcase
end

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
  puts "So you leave it to fate to decide which items will aid you in your quest! You can choose from the following boxes:"
  puts "#{hash_of_bays.values}"
  puts "Don't ask what these runes mean, traveller. It's probably elvish, those guys like this mysterious gibberish"
  puts "Write down the boxes you chose on this paper. Remember: Only write down the runes you need, separated by space. Who know what happens if you do not comply."
  bays = gets.chomp

  ind_bays = bays.split(" ")

 array_of_indexes = ind_bays.map do |bay|
    array_of_bays.index(bay)
  end

sorted_array_of_indexes = array_of_indexes.sort
distance_traveled = sorted_array_of_indexes.last - sorted_array_of_indexes.first

array_of_chosen_items = hash_of_items.values_at(*sorted_array_of_indexes).compact

puts "Gnome nr.346, you have to walk #{distance_traveled} boxes between the first and the last. #{distance_traveled}, and NO MORE"
puts "The items you need to get for Customer nr. 11 are #{array_of_chosen_items}. Please do not get anything else. You remember last time when you opened a magic portal to the Underworld."
end

def get_items
  puts "As of now, the following useful artifacts are available in the WAREHOUSE:"
  puts "#{hash_of_items.values}"
  puts "Please write down the tools of the trade you desire on this piece of paper. Be advised: the gnomes can only understand your request, if you put the exact name of the items separated only by a comma, like such: rubber duck,tire swing,rusty nail"
  items = gets.chomp

  picked_array_of_items = items.split(",")

array_of_item_indexes = picked_array_of_items.map do |item|
  array_of_items.index(item)
end

sorted_array_of_item_indexes = array_of_item_indexes.sort

array_of_chosen_bays = hash_of_bays.values_at(*sorted_array_of_item_indexes).compact

puts "Gnome nr. 346, get the items from the following boxes: #{array_of_chosen_bays} For your convenience, they are in order. Don't get lost, last time I had to get you back from a parallel dimension"
end

response = menu

until response == 'l'
  case response
  when 'b'
    get_bay
  when 't'
    get_items
  end

  pause

  response = menu
end







