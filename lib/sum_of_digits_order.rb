def sum_of_digits_order(weights)
  # return weights.reverse if weights.length < 3
  # return [10,101,9] if weights.length == 3
  weights_sum_of_digits = {}
  weights.each do |weight|
    weights_sum_of_digits[sum_of_digits(weight)] = weight
  end
  result = []
  weights_sum_of_digits.sort.each do |item|
    result << item[1]
  end
  result
end

private 
def sum_of_digits(number)
  no_of_100s = number / 100
  no_of_10s = number % 100 / 10
  no_of_1s = number % 10 / 1
  sum = no_of_100s + no_of_10s + no_of_1s
end
