# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    @candidates.find { |candidate| candidate[:id] == id}
  end
  
  def experienced?(candidate)
    candidate[:years_of_experience] >= 2
  end
  
  def has_github_points?(candidate)
    candidate[:github_points] >= 100
  end
  
  def knows_ruby_python?(candidate)
    candidate[:languages].include?('Ruby') || candidate[:languages].include('Python')
  end
  
  def applied_recently?(candidate)
    (Date.today - Date.parse(candidate[:date_applied])).to_i <= 15
  end
  
  def over_17?(candidate)
    candidate[:age] >= 18
  end

  def qualified_candidates(candidates)
    candidates.select do |candidate| experienced?(candidate) && has_github_points?(candidate) && knows_ruby_python?(candidate) && applied_recently?(candidate) && over_17?(candidate)
  end
end