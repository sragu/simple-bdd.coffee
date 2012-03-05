root = exports ? window

root.add = (str) ->  
  return 0 if not str?.length

  arr = str.split split_by(str)
  numbers = arr.map (n) -> parseInt n
  numbers = numbers.filter (x) -> not isNaN(x)
  return numbers.reduce (x,y) -> x + y

split_by = (str) -> 
  d = /^\/\/(.)\n/.exec str
  delimiter = ',|' + d[1] if d?.length 
  new RegExp(delimiter, 'g')
