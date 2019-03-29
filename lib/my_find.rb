require 'pry'

def my_find(collection)
  i = 0

  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end
end


my_find([1,2,3,4,10]) {|el| el > 9}
