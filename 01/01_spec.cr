require "spec"
require "./01"

describe "part one" do
  it do
    part_one(0, [1, -2, 3, 1]).should eq(3)
    part_one(0, [1, 1, 1]).should eq(3)
    part_one(0, [-1, -2, -3]).should eq(-6)
  end
end

describe "part two" do
  it do
    part_two(0, [1, -1]).should eq(0)
    part_two(0, [-6, 3, 8, 5, -6]).should eq(5)
    part_two(0, [7, 7, -2, -7, -4]).should eq(14)
  end
end
