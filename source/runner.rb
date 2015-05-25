require_relative 'orange_tree'

#Only run this _after_ your implementation and tests are complete

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

 puts "av diameter "
 p avg_diameter = (basket.inject(0) {|sum, orange| sum = sum + orange.diameter })/basket.length



  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
