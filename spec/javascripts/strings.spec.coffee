strings = require '../../public/javascripts/strings.coffee'

describe "Hamming length", -> 

    it 'should be zero for strings of equal length', -> 
        expect(strings.hamming('hello', 'hello')).toEqual 0

    it 'should be -1 for strings of unequal length', ->
        expect(strings.hamming('hello', 'hi')).toEqual -1
