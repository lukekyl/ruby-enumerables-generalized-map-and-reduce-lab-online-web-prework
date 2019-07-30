# Your Code Here

def map(source_array)
  i = 0 
  new_array = []
  while i<source_array.length do
    new_array.push( yield(source_array[i]) ) 
    new_array[i]
    i += 1
  end
  p new_array
end


map([1, 2, 3, -9]) { |n| n }

map([1, 2, 3, -9]) { |n| n * -1 }

map([1, 2, 3, -9]) { |n| n * n }



def reduce(source_array, starting_point=nil)
  i = 0 
  total = 0
  
  if starting_point 
    total = total + starting_point
  end
  
  while i<source_array.length do 
    total = yield(total, source_array[i]) 
    if source_array[i] == true
    p true
    end
    p total
    i += 1
  end
  p false
  p total
end


reduce([1, 2, 3], 100) { |x, n| x + n }






