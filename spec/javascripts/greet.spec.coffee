greet = require '../../public/javascripts/greet.coffee'

describe "Greetings", ->
  it 'should say hello', ->
      expect(greet.sayHello()).toEqual "Hello"
