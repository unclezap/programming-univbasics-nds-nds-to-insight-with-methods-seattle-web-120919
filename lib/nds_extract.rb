require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



def directors_totals(nds)
  i = 0
  result = {}
  while i < directors_database.length do
    h = 0
    sum = 0
      while h < directors_database[i][:movies].length do
        sum += directors_database[i][:movies][h][:worldwide_gross]  
        h += 1
      end
    result[directors_database[i][:name]] = sum
    i += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

  h = 0
  sum = 0
      while h < director_data[:movies].length do
        sum += director_data[:movies][h][:worldwide_gross]  
        h += 1
      end
      
   return sum
end
