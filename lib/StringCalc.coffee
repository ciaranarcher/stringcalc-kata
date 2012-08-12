class StringCalc
  constructor: ->

  add: (nums) ->
    return 0 if nums == ''
    return parseInt(nums) unless isNaN nums
    
    numbers = nums.split(',')
    total = 0
    for n in numbers
      total += parseInt(n)

    total


exports.StringCalc = StringCalc