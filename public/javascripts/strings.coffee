root = exports ? window

root.hamming = (str1, str2) ->
    -1 if not str1.length is str2.length
    0 if str1 is str2
