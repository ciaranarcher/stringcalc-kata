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
    it 'allows a delimited to be passed', ->
      @stringCalc.delim = ';'
      expect(@stringCalc.add('1;2')).toBe 3
      @stringCalc.delim = '\n'
      expect(@stringCalc.add('1\n12')).toBe 13
    it 'delimits on \\n as well as set delimited', ->
      expect(@stringCalc.add('1\n2,3')).toBe 6
      @stringCalc.delim = ';'
      expect(@stringCalc.add('1\n1;2')).toBe 4
    it 'raises an exception for negative numbers', ->
      stringCalc = @stringCalc # get around scoping in anon inner function
      expect(-> stringCalc.add('1\n2,-3')).toThrow 'negatives not allowed'
    it 'should allow a delimiter to be passed with the string', ->
      expect(@stringCalc.add('//;\n1;2')).toBe 3
