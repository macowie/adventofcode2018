INPUT             = File.read("01/input")
FREQUENCY_CHANGES = INPUT.lines.map(&.to_i)

def part_one(initial_frequency = 0, changes = FREQUENCY_CHANGES)
  changes.sum(initial_frequency)
end

def part_two(initial_frequency = 0, changes = FREQUENCY_CHANGES)
  found_frequencies = [initial_frequency] of Int32
  current_frequency = initial_frequency

  changes.cycle do |change|
    current_frequency += change
    break if found_frequencies.includes?(current_frequency)
    found_frequencies << current_frequency
  end

  current_frequency
end

def print_results
  puts "Part one: #{part_one}"
  puts "Part two: #{part_two}"
end
