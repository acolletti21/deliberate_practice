require 'rspec'
require 'benchmark'
require 'pry'

# number_array = [2, 2, 4, 5, 7, 9, 26, 12, 9, 8]

class Numbers

# array.uniq.sort also solves

  def self.sorted_numbers(array)
    # binding.pry 
    sorted_array = []

    array.each do |number|
      if sorted_array.include?(number) == false
        sorted_array << number
      end
    end
      sorted_array.sort
  end

end

# p sorted_array

RSpec.describe Numbers do
  describe '#sorted_numbers' do
    it 'should return an array with no duplicate numbers' do
      numbers = Numbers.new
      expect(Numbers.sorted_numbers([2, 2, 6, 5])).to eq([2, 5, 6])
    end
  end
end