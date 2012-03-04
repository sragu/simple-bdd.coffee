root = exports ? window

root.add = (str) ->  
  return 0 if not str?.length
  
  arr = str.split ','
  numbers = arr.map (n) -> parseInt n
  return numbers.reduce (x,y) -> x + y
