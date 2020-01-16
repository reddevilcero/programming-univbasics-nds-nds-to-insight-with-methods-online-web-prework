require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}

  for director in nds
      result[director[:name]] = 0
      director[:movies].each { |movie|
        result[director[:name]] += movie[:worldwide_gross]
      }
    end
    return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

end
