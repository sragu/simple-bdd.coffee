calculator = require '../../public/javascripts/calculator.coffee'

describe "should add numbers present on the string", -> 

    it 'should be zero for empty string', -> 
        expect(calculator.add('')).toEqual 0
    
    it 'should be given number when there input is a number', -> 
        expect(calculator.add('3')).toEqual 3
    
    it 'should add numbers delimited by ,', -> 
        expect(calculator.add('3,2')).toEqual 5
