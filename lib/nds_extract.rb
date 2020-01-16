require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}

  for director in nds do
    result[director[:name]] = gross_for_director(director)

  end

  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

  total_for_director = 0

  director_data[:movies].each { |movie|
    total_for_director += movie[:worldwide_gross]
    }

   total_for_director
end
