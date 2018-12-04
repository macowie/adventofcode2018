INPUT = File.read("03/input").lines

struct ClaimSize
  property width
  property height

  def initialize(@width : Int32, @height : Int32)
  end
end

struct Coordinate
  property x
  property y

  def initialize(@x : Int32, @y : Int32)
  end
end

struct Claim
  property id
  property size
  property top_left

  def initialize(@id : String, @size : ClaimSize, @top_left : Coordinate)
  end
end

class FabricSheet
end

def read_claim(line)
  scanner = line.match(/#(?<id>\d+)\s@\s(?<x>\d+),(?<y>\d+):\s(?<w>\d+)x(?<h>\d+)/)

  id = scanner.not_nil!["id"]
  x = scanner.not_nil!["x"].to_i
  y = scanner.not_nil!["y"].to_i
  w = scanner.not_nil!["w"].to_i
  h = scanner.not_nil!["h"].to_i
  Claim.new(id, ClaimSize.new(w, h), Coordinate.new(x, y))
end

def load_claims(lines : Array(String))
  lines.map { |line| read_claim(line) }
end

def part_one
  claims = load_claims(INPUT)
end
