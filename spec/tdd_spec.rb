require 'tdd'

describe '#my_uniq' do
  it 'should take in a new Array and return a new array' do
    expect(my_uniq([])).to eq([])
  end

  it 'should return unique elements in the order they first appeared' do
    expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
  end
end

describe 'Array#two_sum' do
  it 'returns array of indices of elements that sum to zero' do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it 'is sorted by ascending indices' do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe '#my_transpose' do
  it 'transposes a square array' do
    expect(my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end
end

describe '#stock_picker' do
  let(:stocks) { [3, 4, 2, 5, 1] }

  it 'should return a new array' do
    expect(stock_picker(stocks).class).to eq(Array)
  end

  it 'should have only two items' do
    expect(stock_picker(stocks).length).to eq(2)
  end

  it 'should return the most profitable days in chronological order' do
    expect(stock_picker([3, 2, 5, 0, 6])).to eq([3, 4])
  end

  it 'should return the most profitable days in chronological order' do
    expect(stock_picker(stocks)).to eq([2, 3])
  end
end
