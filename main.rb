# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here


# Prints out all candidates at first for reference
pp @candidates

# Output the qualified candidates list
qualified_candidates_list = qualified_candidates(@candidates)
puts "Qualified Candidates: "
pp qualified_candidates_list

# Get sorted Candidates
sorted_candidates = ordered_by_qualifications(@candidates)

# Output sorted candidates
puts "Sorted Candidates: "
pp sorted_candidates