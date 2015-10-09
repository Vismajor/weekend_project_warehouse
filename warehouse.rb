def array_of_bays 
  ['a10', 'a9', 'a8', 'a7', 'a6', 'a5', 'a4', 'a3', 'a2', 'a1', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9', 'c10', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'b9', 'b10']
end

hash_of_bays = {
  :a10 => "rubber band", 
  :a9 => "glow stick", 
  :a8 => "model car",
  :a7 => "bookmark",
  :a6 => "shovel",
  :a5 => "rubber duck",
  :a4 => "hanger",
  :a3 => "blouse",
  :a2 => "stop sign",
  :a1 => "needle",
  :c1 => "rusty nail",
  :c2 => "drill press",
  :c3 => "chalk",
  :c4 => "word search",
  :c5 => "thermometer",
  :c6 => "face wash",
  :c7 => "paint brush",
  :c8 => "candy wrapper",
  :c9 => "shoe lace",
  :c10 => "leg warmers",
  :b1 => "tire swing",
  :b2 => "sharpie",
  :b3 => "picture frame",
  :b4 => "photo album",
  :b5 => "nail filer",
  :b6 => "tooth paste",
  :b7 => "bath fizzers",
  :b8 => "tissue box",
  :b9 => "deodorant",
  :b10 => "cookie jar",
}

#Enter string
#Turn it into an array
#

def get_bay
  puts "Please type in which bay you need e.g a1,a2,a3"
  bays = gets.chomp

  # ['a1', 'b4', 'c3']
  ind_bays = bays.split(",")
  # [10, 4, 5]
  
 array_of_indexes = ind_bays.map do |bay|
    array_of_bays.index(bay)
  end
sorted_array_of_indexes = array_of_indexes.sort
distance_traveled = sorted_array_of_indexes.last - sorted_array_of_indexes.first
print "The distance between the requested bays is #{distance_traveled}"
end







def get_distance
 
end

def get_product_name

end









def journey_length(tram_line, start_station, end_station)
  start_station_index = lothian_trams[tram_line].index(start_station)
  end_station_index = lothian_trams[tram_line].index(end_station)
  (start_station_index - end_station_index).abs
end

print get_bay






