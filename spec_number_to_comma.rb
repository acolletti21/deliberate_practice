require_relative "number_to_comma"
require 'rspec'
require 'pry'

describe NumberToComma do
  describe ".add_commas" do
    it "Expect method to return correct class" do
      desired = NumberToComma.add_commas(12345)
      expect(desired.class).to be(String)
    end

    it "Expect a error message" do
      desired = NumberToComma.add_commas('123ab123')
      expect(desired).to eq('Please enter a number')
    end

    it "Expect a string with 1 comma" do
      desired = NumberToComma.add_commas(12345)
      expect(desired).to eq('12,345')
    end

    it "Expect to strip decimals and return a string with one comma" do
      desired = NumberToComma.add_commas(12345.00)
      expect(desired).to eq('12,345')
    end

    it "Expect to strip decimals and return a string with one comma" do
      desired = NumberToComma.add_commas(12345.99)
      expect(desired).to eq('12,345')
    end

    it "Expect a string with a lot of commas" do
      big_number = 89534893459453908435890349053409734570340934589034580935894539034503489045803458903459034590534890345809
      desired = NumberToComma.add_commas(big_number)
      expect(desired.scan(/,/).count).to eq(34)
    end

    it "Expect a string with a lot of commas" do
      big_number = 89534893459453908435890349053409734570340934589034580935894539034503489045803458903459034590534890345809
      desired = NumberToComma.add_commas(big_number)
      expect(desired.scan(/,/).count).to eq(34)
    end
  end

  xdescribe '.bonus_add_commas' do
    it "Expect method to return correct class" do
      desired = NumberToComma.bonus_add_commas(12345)
      expect(desired.class).to be(String)
    end

    it "Expect a string with 1 comma" do
      desired = NumberToComma.bonus_add_commas(12345)
      expect(desired).to eq('12,345')
    end

    it "Expect to strip decimals and return a string with one comma" do
      desired = NumberToComma.bonus_add_commas(12345.00)
      expect(desired).to eq('12,345')
    end

    it "Expect to strip decimals and return a string with one comma" do
      desired = NumberToComma.bonus_add_commas(12345.99)
      expect(desired).to eq('12,345')
    end

    it "Expect a string with a lot of commas" do
      big_number = 89534893459453908435890349053409734570340934589034580935894539034503489045803458903459034590534890345809
      desired = NumberToComma.bonus_add_commas(big_number)
      expect(desired.scan(/,/).count).to eq(34)
    end

    it "Expect a string with a lot of commas" do
      big_number = 89534893459453908435890349053409734570340934589034580935894539034503489045803458903459034590534890345809
      desired = NumberToComma.bonus_add_commas(big_number)
      expect(desired.scan(/,/).count).to eq(34)
    end

    it "Expect a string with 1 commas" do
      big_number = 'jdjoi9-=] []xkke j12kgfjrin=\][]jl djlg2jklsdjkldsf3'
      desired = NumberToComma.bonus_add_commas(big_number)
      expect(desired).to eq('91,223')
    end
  end
end
