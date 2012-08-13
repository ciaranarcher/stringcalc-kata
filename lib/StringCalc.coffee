class StringCalc
  constructor: (delim = ',')->
    @delim = delim

  add: (nums) ->
    return 0 if nums == ''
    return parseInt(nums) unless isNaN nums
    
    regex = RegExp('[\\n|' + @delim + ']') 
    numbers = nums.split(regex)

    total = 0
    for n in numbers
      total += parseInt(n)

    total


exports.StringCalc = StringCalc