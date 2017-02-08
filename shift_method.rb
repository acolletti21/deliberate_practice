# learn to use shift and unshift on a hash



people = [{name: "Henry", age: 22, hobbies:["biking", "swimming", "singing", "baking", "reading", "gardening"], favorite_colors:["red", "yellow", "blue"]}, {name: "Alexander", age: 25, hobbies:["painting", "swimming", "baking", "reading"], favorite_colors:["red", "orange", "blue"]},{name: "Cassandra", age: 17, hobbies:["singing", "baking", "biking"], favorite_colors:["blue", "green", "yellow"]},{name: "Alice", age: 30, hobbies:["singing", "baking", "reading"], favorite_colors:["purple", "orange", "yellow"]}]


people.each do |person|
  person[:hobbies].shift
  p person[:hobbies]
  person[:hobbies].unshift("yelling")
  p person[:hobbies]
end

#shift adds removes the first key/value in the hash/array and unshift(value) adds that value to the beginning
#here I remove their first hobby and replace it with yelling.

namekey_name = people[1].shift
puts namekey_name[0].to_s.capitalize + ": " + namekey_name[1]
#here I grab the second hash and shift returns the first key value pair as a 2 item array. I make the key a string so i'm able to display it.