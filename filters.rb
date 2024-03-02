# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
  @candidates.each do | candidate |
    candidate_id = candidate[:id]
    if id == candidate_id 
      return candidate
    end
  end
   nil
end
  
def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    return true
  end
  false
end

def github_points?(candidate)
  if candidate[:github_points] >= 100
    return true
  end
  false
end

def language_minimum?(candidate)
  if candidate[:languages].include?("Python") || candidate[:languages].include?("JavaScript") 
    return true
  end
  false
end

def applied_within_15_days?(candidate)
  if candidate[:date_applied] > 15.days.ago.to_date
    return true
  end
  false
end

def of_age?(candidate) 
  if candidate[:age] >= 18 
    return true
  end
  false
end

def qualified_candidates(candidates)
  # Your code Here
  out_array = []
  candidates.each do | candidate | 
    if experienced?(candidate) && github_points?(candidate) && language_minimum?(candidate) && applied_within_15_days?(candidate) && of_age?(candidate)
      out_array << candidate
    end
  end
  return out_array
end

def ordered_by_qualifications(candidates) 
  out_array = candidates.sort_by { | candidate | [-candidate[:years_of_experience], -candidate[:github_points]]}
end

  

  
