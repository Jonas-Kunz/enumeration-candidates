# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
@candidates.each do | candidate |
  experienced?(candidate)
end

candidate = find(5)

# pp qualified_candidates(@candidates)
# pp @candidates

pp ordered_by_qualifications(@candidates)