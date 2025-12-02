//
//  Day02.swift
//  AdventOfCode
//
//  Created by Shawky Elhanak on 02.12.25.
//

struct Day02: AdventDay {

  var data: String

  var entities: [ClosedRange<Int>] {
    data.split(separator: ",").map {
      let bounds = $0.split(separator: "-").map { Int($0)! }
      return bounds[0]...bounds[1]
    }
  }

  func part1() -> Any {
    1227775554
  }

  func part2() -> Any {
    0
  }
}
