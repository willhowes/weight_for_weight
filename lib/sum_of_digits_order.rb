def sum_of_digits_order(weights)
  weights.sort_by { |weight| sum_of_digits(weight)}
end

private

def sum_of_digits(number)
  no_of_100s = number / 100
  no_of_10s = number % 100 / 10
  no_of_1s = number % 10 / 1
  sum = no_of_100s + no_of_10s + no_of_1s
end
