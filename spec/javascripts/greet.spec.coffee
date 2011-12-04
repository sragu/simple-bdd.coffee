greet = require '../../public/javascripts/greet.coffee'

describe "Greetings", ->

  it 'should say hello', ->
     expect(greet.sayHello()).toEqual "Hello"

  it 'should say hello to Jake', ->
	expect(greet.sayHelloTo('Jake')).toEqual "Hello, Jake!"