# find club with most members


clubs = [{name: "club1", members: 15}, {name: "club2", members: 25}, {name: "club3", members: 34}, {name: "club4", members: 12}, {name: "club5", members: 17},]


biggest_club = 0

clubs.each do |club|
  if club[:members] > biggest_club
    biggest_club = club[:members]
  end
end

puts biggest_club