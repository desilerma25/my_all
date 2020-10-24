require 'pry'

def my_all?(collection) # create method using that takes in arg (array)
    i = 0 # begin counter since we are using a low level enum.
    block_return_values = [] # want the elements called to be returned, need a new array
    while i < collection.length # while, goes through each element in array
      block_return_values << yield(collection[i]) # shovel new elements into new array
      i = i + 1 # increment by 1 to go through all elements
    end # close out while block
  
    if block_return_values.include?(false) # use include? to determine the return of my_all
      false 
    else # doesnt include false? then return true
      true
    end
  end # close out entire method