require 'pry'
# your code goes here
#array = ["ruby", "rspec", "rails"]
# any? Passes each element of the collection to the given block.
# The method returns true if the block ever returns a value other than false or nil.
def begins_with_r(array)
  array.all?{|word| word.chr == "r"} # word[0] works as well.
end
#begins_with_r(array)


#array2 = ["earth", "fire", "wind", "water", "heart"]
def contain_a(array2)
  # return all elements that contain the letter 'a'
  array2.select{|word| word.include?("a")}
end
#contain_a(array2)


#array3 = ["candy", :pepper, "wall", :ball, "wacky"]
def first_wa(array3)
  # "Return the first element that begins with the letters 'wa'"
  array3.find{|word| word.to_s.start_with?("wa")}
end
#first_wa(array3)


def remove_non_strings(array4)
  array4.keep_if{|obj| obj.is_a? String}
end



def count_elements(array5)
  new_array = Array.new
  array5.each {|element| new_array << array5.count(element)}

  count = 0
  array5.each do |element|
    element[:count] = new_array[count]
    count +=1
  end
  array5.uniq
end


def merge_data(keys, data)
  array_one = []
  array_two = []
  keys.each do |hash|
    array_one << hash
  end
  data.each do |hashes|
    hashes.each do |key, merge_value|
      array_two << merge_value
    end
  end
  merged_array = array_one.map.with_index { |x, i| x.merge(array_two[i]) }
end


 def find_cool(hashes)
  cool_hashes = []
  hashes.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_hashes << hash
      end
    end
  end
  cool_hashes
end


 def organize_schools(schools)
  new_hash = {}
  arr = []
  schools.each do |name, hash|
    hash.each do |location_key, location|
      if new_hash[location].nil?
        arr << name
        new_hash[location] = arr
        arr = []
      elsif new_hash[location]
        new_hash[location] << name
        arr = []
      end
    end
  end
  new_hash
end




# binding.pry
