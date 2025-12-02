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
    var sum = 0
    for range in entities {
      for i in range {
        let str = String(describing: i)
        let midIndex = str.index(str.startIndex, offsetBy: str.count / 2)
        let firstHalf = str[..<midIndex]
        let secondHalf = str[midIndex...]
        guard firstHalf == secondHalf else { continue }
        sum += i
      }
    }
    return sum
  }

  func part2() -> Any {
    0
  }
}
