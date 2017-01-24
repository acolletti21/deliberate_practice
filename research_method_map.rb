a = [ "a", "b", "c", "d" ]

# collect is synonymous with map, they work exactly the same way

p a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
p a.map { |x| x + "!" }            #=> ["a!", "b!", "c!", "d!"]

# the {} above are equal to "do" and "end"

#below is the equivalent code manually written out using an each loop
b = []
a.each do |x|
  b << x + "!"
end
p b

# again, but with better variable names
letters = [ "a", "b", "c", "d" ]
mapped_letters = []

letters.each do |letter|
  mapped_letters << letter + "!"
end
p mapped_letters


# map can be used with its index, works the same but allows us to keep track of index as well as element
p a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]

# map is non destructive because it has not changed the original arrays value
p a                                #=> ["a", "b", "c", "d"]


# example: given an array of numbers, divide each by 2 to get [1,2,2.5,3,4,5]
numbers = [2,4,5,6,8,10]
p numbers.map{ |number| number / 2.to_f }

