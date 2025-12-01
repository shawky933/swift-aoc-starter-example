import Algorithms

struct Day00: AdventDay {

  var data: String

  var entities: [String] {
    data.split(separator: "\n").map { String($0) }
  }

  func part1() -> Any {
    var current = 50
    var count = 0
    for entity in entities {
      let turn = entity.first!
      let amount = Int(entity.dropFirst())!
      current = turn == "L" ? current - amount : current + amount
      while current < 0 {
        current += 100
      }
      while current >= 100 {
        current -= 100
      }
      count = current == 0 ? count + 1 : count
    }
    return count
  }

  func part2() -> Any {
    // Currently unimplemented; remove when you have a solution.
    0
  }
}
