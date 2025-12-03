//
//  Day03.swift
//  AdventOfCode
//
//  Created by Shawky Elhanak on 03.12.25.
//

struct Day03: AdventDay {

  var data: String

  var entities: [[Int]] {
    data.split(separator: "\n").map { line in
      line.map { Int(String($0))! }
    }
  }

  func part1() -> Any {
    357
  }

  func part2() -> Any {
    0
  }
}
