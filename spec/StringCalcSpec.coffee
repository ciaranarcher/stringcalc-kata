StringCalc = require('./../lib/StringCalc').StringCalc

describe 'StringCalc', ->
  it 'is created', ->
    expect(typeof new StringCalc).not.toBe 'undefined'
  describe 'adding numbers', ->
    beforeEach ->
      @stringCalc = new StringCalc

    it 'returns 0 for a blank string', ->
      expect(@stringCalc.add('')).toBe 0
