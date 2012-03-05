root = exports ? window

root.add = (str) ->  
  return 0 if not str?.length

  arr = str.split split_by(str)
  numbers = arr.map to_i
  return numbers.reduce (x,y) -> x + y

to_i = (a) -> 
  i = parseInt a
  if isNaN i then 0 else i

split_by = (str) -> 
  d = /^\/\/(.)\n/.exec str
  delimiter = ',|' + d[1] if d?.length 
  new RegExp(delimiter, 'g')
