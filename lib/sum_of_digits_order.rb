def sum_of_digits_order(weights)
  weights_array_of_hashes = weights_array_of_hashes(weights)
  sorted_array = weights_array_of_hashes.sort_by { |weight| [ weight['sum of digits'], weight['weight'] ] }
  result = []
  sorted_array.each do |weight_hash| 
    result << weight_hash['weight']
  end
  result.join(' ')
end

private

def sum_of_digits(number)
  no_of_1000s = number / 1000
  no_of_100s = number % 1000 / 100
  no_of_10s = number % 100 / 10
  no_of_1s = number % 10 / 1
  sum = no_of_100s + no_of_10s + no_of_1s
end

def weights_array_of_hashes(weights)
  weights_array_of_hashes = []
  weights.split(' ').each do |weight|
    weights_hash = Hash.new
    weights_hash["weight"] = weight
    weights_hash["sum of digits"] = sum_of_digits(weight.to_i)
    weights_array_of_hashes << weights_hash
  end
  weights_array_of_hashes
end
