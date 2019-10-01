require 'sum_of_digits_order'

describe '#sum_of_digits_order' do
  it 'correctly handles a 9 and a 10' do
    expect(sum_of_digits_order([9,10])).to eq [10,9]
  end

  it 'correctly handles an array of 9, 10, 101' do
    expect(sum_of_digits_order([9,10,101])).to eq([10,101,9])
  end

  it 'correctly handles an array of 9, 55, 105, 201' do
    expect(sum_of_digits_order([9, 55, 105, 201])).to eq([201, 105, 9, 55])
  end
end
