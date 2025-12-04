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
    13
  }

  func part2() -> Any {
    0
  }
}
