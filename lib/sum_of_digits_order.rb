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
  sum_of_digits = number.split('').inject(0) { |sum, digit| sum + digit.to_i }
end

def weights_array_of_hashes(weights)
  weights_array_of_hashes = []
  weights.split(' ').each do |weight|
    weights_hash = Hash.new
    weights_hash["weight"] = weight
    weights_hash["sum of digits"] = sum_of_digits(weight)
    weights_array_of_hashes << weights_hash
  end
  weights_array_of_hashes
end
