calculator = require '../../public/javascripts/calculator.coffee'

describe "should add numbers present on the string", -> 

    it 'should be zero for empty string', -> 
        expect(calculator.add('')).toEqual 0
    
    it 'should be given number when there input is a number', -> 
        expect(calculator.add('3')).toEqual 3
    
    it 'should add numbers delimited by comma', -> 
        expect(calculator.add('3,2')).toEqual 5
    
    it 'should ignore new lines', -> 
        expect(calculator.add('3,\n2')).toEqual 5
    
    it 'should support custom delimters', -> 
        expect(calculator.add('//;\n3;2')).toEqual 5
    
    it 'should support multiple delimters', -> 
        expect(calculator.add('//;\n3;2,1')).toEqual 6
    
    it 'should support custom delimters', -> 
        expect(calculator.add('//x\n3x2x1x3')).toEqual 9
