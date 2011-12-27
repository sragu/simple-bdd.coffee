root = exports ? window

root.hamming = (str1, str2) ->
    return -1 if not (str1.length is str2.length)
    return 0 if str1 is str2
    
    distance = 0
    length = str1.length
    chars1 = str1.split ''
    chars2 = str2.split '' 
    (distance++ if chars1[i] isnt chars2[i]) for i in [0..(length-1)]
    return distance
