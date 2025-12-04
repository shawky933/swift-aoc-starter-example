//
//  Day04.swift
//  AdventOfCode
//
//  Created by Shawky Elhanak on 04.12.25.
//

struct Day04: AdventDay {

  var data: String

  var entities: [[String]] {
    data.split(separator: "\n").map { $0.map { String($0) }  }
  }

  func part1() -> Any {
    var count = 0
    for (i, row) in entities.enumerated() {
      for (j, position) in row.enumerated() {
        guard position == "@" else { continue }
        var adjacentCount = 0
        let directions = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
        for (dx, dy) in directions {
          let newX = i + dx
          let newY = j + dy
          guard newX >= 0 && newX < entities.count && newY >= 0 && newY < row.count else { continue }
          if entities[newX][newY] == "@" {
            adjacentCount += 1
          }
        }
        if adjacentCount < 4 {
          count += 1
        }
      }
    }
    return count
  }

  func part2() -> Any {
    0
  }
}
