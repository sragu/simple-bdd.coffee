strings = require '../../public/javascripts/strings.coffee'

describe "Hamming length", -> 

    it 'should be zero for same string', -> 
        expect(strings.hamming('hello', 'hello')).toEqual 0

    it 'should be -1 for strings of unequal length', ->
        expect(strings.hamming('hello', 'hi')).toEqual -1

    it 'should be 1 for bow and now', ->
        expect(strings.hamming('bow', 'now')).toEqual 1
    
    it 'should be 3 for bow and far', ->
        expect(strings.hamming('bow', 'far')).toEqual 3
    
    it 'should be 2 for bowl and bone', ->
        expect(strings.hamming('bowl', 'bone')).toEqual 2
