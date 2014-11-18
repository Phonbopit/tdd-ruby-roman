#! usr/bin/env ruby

require "minitest/spec"
require "minitest/autorun"
require "minitest/pride"

def roman(n)

	roman = ""

	while n > 0 do

		if n >= 1000
			roman += "M"
			n -= 1000
		elsif n >= 500
			roman += "D"
			n -= 500
		elsif n >= 100
			roman += "C"
			n -= 100
		elsif n >= 90
			roman += "XC"
			n -= 90
		elsif n >= 50
			roman += "L"
			n -= 50
		elsif n >= 10
			roman += "X"
			n -= 10
		elsif n >= 5
			roman += "V"
			n -= 5
		elsif n >= 4
			roman += "IV"
			n -= 4
		else
			roman += "I" *n
			n = 0
		end

	end

	return roman
end

describe "roman" do
	it "converts the number 1 to the string I" do
		roman(1).must_equal "I"
	end

	it "converts the number 2 to the string II" do
		roman(2).must_equal "II"
	end

	it "converts the number 3 to the string III" do
		roman(3).must_equal "III"
	end

	it "converts the number 4 to the string IV" do
		roman(4).must_equal "IV"
	end

	it "converts the number 5 to the string V" do
		roman(5).must_equal "V"
	end

	it "converts the number 6 to the string VI" do
		roman(6).must_equal "VI"
	end

	it "converts the number 7 to the string VII" do
		roman(7).must_equal "VII"
	end

	it "converts the number 10 to the string X" do
		roman(10).must_equal "X"
	end

	it "converts the number 14 to the string XIV" do
		roman(14).must_equal "XIV"
	end

	it "converts the number 2896 to the string MMDCCCXCVI" do
		roman(2896).must_equal "MMDCCCXCVI"
	end 

end

