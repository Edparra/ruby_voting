#This will not run in repl.it
require 'io/console'

puts "Welcome to my election voting program."

puts "Election candidates are: Ed, Bob and Sue"


votes = [];
$i = 1
while $i<11  do
puts "Vote #{$i}:"
vote = STDIN.noecho(&:gets).chomp
votes.push(vote)
$i+=1
end

puts "All Votes"
ed = 0
bob = 0
sue = 0
invalid = 0

for vote in votes
if vote == "ed"
 ed +=1
elsif vote == "bob"
 bob +=1
elsif vote == "sue"
 sue +=1
else
 invalid += 1
end
end

puts "Ed got #{ed} votes"
puts "Bob got #{bob} votes"
puts "Sue got #{sue} votes"
puts "There was #{invalid} invalid votes"

puts "counting votes..."
people = [ed, bob, sue]
sorted = people.sort_by(&:to_i).reverse
winner = people.max

 if sorted[0]==sorted[1]
   puts "We have a tie, we need a recount!"
   elsif
 if winner == ed
   puts "The winner is Ed"
 elsif winner == bob
   puts "The winner is Bob"
 elsif winner == sue
   puts "The winner is Sue"
else
 puts "Something must be broken!"
end
end
