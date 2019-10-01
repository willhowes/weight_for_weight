def sum_of_digits_order(weights)
  weights_array_of_hashes = weights_array_of_hashes(weights)
  weights_array_of_hashes.sort_by! { |weight| [ weight[:sum_of_digits], weight[:weight] ] }
  weights_array_of_hashes.map { |weight_hash| weight_hash[:weight] }.join(' ')
end

private

def sum_of_digits(number)
  number.split('').inject(0) { |sum, digit| sum + digit.to_i }
end

def weights_array_of_hashes(weights)
  weights.split(' ').map { |weight| create_hash(weight) }
end

def create_hash(weight)
  weights_hash = Hash.new
  weights_hash[:weight] = weight
  weights_hash[:sum_of_digits] = sum_of_digits(weight)
  weights_hash
end
