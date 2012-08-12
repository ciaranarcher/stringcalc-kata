class StringCalc
  constructor: ->

  add: (nums) ->
    return 0 if nums == ''
    return parseInt(nums) unless isNaN nums

exports.StringCalc = StringCalc