require "spec"
require "./03"

describe "read_claim" do
  it do
    expected_id = "1276"
    expected_size = ClaimSize.new(20, 18)
    expected_coord = Coordinate.new(711, 388)
    actual = read_claim("#1276 @ 711,388: 20x18")

    actual.size.should eq(expected_size)
    actual.top_left.should eq(expected_coord)
    actual.id.should eq(expected_id)
  end
end
