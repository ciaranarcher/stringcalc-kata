StringCalc = require('./../lib/StringCalc').StringCalc

describe 'StringCalc', ->
  it 'is created', ->
    expect(typeof new StringCalc).not.toBe 'undefined'
  describe 'adding numbers', ->
    beforeEach ->
      @stringCalc = new StringCalc

    it 'returns 0 for a blank string', ->
      expect(@stringCalc.add('')).toBe 0
    it 'returns the number for a string with one number', ->
      expect(@stringCalc.add('1')).toBe 1
      expect(@stringCalc.add('3')).toBe 3
      expect(@stringCalc.add('10')).toBe 10
    it 'returns the sum of all numbers in the string', ->
      expect(@stringCalc.add('1,3')).toBe 4
      expect(@stringCalc.add('1,3,5')).toBe 9
      expect(@stringCalc.add('1,3,0')).toBe 4
      expect(@stringCalc.add('1,13,10')).toBe 24

