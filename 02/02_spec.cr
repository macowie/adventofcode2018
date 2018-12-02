require "spec"
require "./02"

describe "twice repeats?" do
  it { twice_repeats?("abcdef").should be_false }
  it { twice_repeats?("bababc").should be_true }
  it { twice_repeats?("abbcde").should be_true }
  it { twice_repeats?("abcccd").should be_false }
  it { twice_repeats?("aabcdd").should be_true }
  it { twice_repeats?("abcdee").should be_true }
  it { twice_repeats?("ababab").should be_false }
end

describe "thrice repeats?" do
  it { thrice_repeats?("abcdef").should be_false }
  it { thrice_repeats?("bababc").should be_true }
  it { thrice_repeats?("abbcde").should be_false }
  it { thrice_repeats?("abcccd").should be_true }
  it { thrice_repeats?("aabcdd").should be_false }
  it { thrice_repeats?("abcdee").should be_false }
  it { thrice_repeats?("ababab").should be_true }
end

describe "differing chars" do
  it do
    differing_count({"fghij", "fguij"}).should eq(1)
    differing_count({"abcde", "axcye"}).should eq(2)
    differing_count({"abcde", "abcde"}).should eq(0)
  end
end
