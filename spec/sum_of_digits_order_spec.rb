require 'sum_of_digits_order'

describe '#sum_of_digits_order' do
  it 'it correctly handles a 9 and atouc 10' do
    expect(sum_of_digits_order([9,10])).to eq [10,9]
  end
end
