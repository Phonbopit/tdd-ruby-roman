#! usr/bin/env ruby

require "minitest/spec"
require "minitest/autorun"
require "minitest/pride"

def roman(n)
	return "I"
end

describe "roman" do
	it "converts the number 1 to the string I" do
		roman(1).must_equal "I"
	end
end

