class StringCalc
  constructor: (delim = ',')->
    @delim = delim

  add: (nums) ->
    return 0 if nums == ''
    return parseInt(nums) unless isNaN nums

    # allow for passed delimiter
    d = nums.match(/^\/\/[\S]+\n/)
    if d
      passedDelim = d[0].replace('//', '').replace('\n', '')
      nums = nums.replace(d[0], '')
      @delim = passedDelim

    regex = RegExp('[\\n|' + @delim + ']') 
    numbers = nums.split(regex)

    total = 0
    for n in numbers
      parsed = parseInt(n)
      throw 'negatives not allowed' unless parsed >= 0
      total += parsed

    total


exports.StringCalc = StringCalc