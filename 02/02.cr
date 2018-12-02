INPUT = File.read("02/input")
CODES = INPUT.lines

CodePair = Tuple(String, String)

def twice_repeats?(code)
  n_repeats?(code, 2)
end

def thrice_repeats?(code)
  n_repeats?(code, 3)
end

def n_repeats?(code : String, target_count : Int32)
  chars = code.chars.to_set
  chars.any? { |char| code.count(char) == target_count }
end

def twice_count(codes)
  codes.count { |code| twice_repeats?(code) }
end

def thrice_count(codes)
  codes.count { |code| thrice_repeats?(code) }
end

def differing_count(pair)
  pair[0].chars.zip(pair[1].chars).count do |one, two|
    one != two
  end
end

def shared_chars(pair)
  pair[0].chars.zip(pair[1].chars).compact_map do |one, two|
    one if one == two
  end
end

def all_permutations(codes = CODES)
  codes.permutations(2).map { |p| CodePair.from(p) }
end

def part_one(codes = CODES)
  twice_count(codes) * thrice_count(codes)
end

def part_two(codes = CODES)
  one_off = all_permutations(codes).find { |pair| differing_count(pair) == 1 }
  shared_chars(one_off).join if one_off
end

def print_results
  puts "Part One: #{part_one}"
  puts "Part Two: #{part_two}"
end

print_results
