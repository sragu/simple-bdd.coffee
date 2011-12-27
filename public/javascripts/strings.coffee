root = exports ? window

root.hamming = (str1, str2) ->
    return -1 if not (str1.length is str2.length)
    return 0 if str1 is str2
   
    distance = 0
    (distance++ if str2.charAt(i) isnt str1.charAt(i)) for i in [0..str1.length] 
    return distance
