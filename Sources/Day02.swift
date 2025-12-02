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
    var sum = 0
    for range in entities {
      for i in range {
        let str = String(describing: i)
        for rangeLength in 1..<(str.count / 2) + 1 {
          var found = false
          guard str.count % rangeLength == 0 else { continue }
          let endIndex = str.index(str.startIndex, offsetBy: rangeLength)
          let initial = str[..<endIndex]
          for index in stride(from: rangeLength, to: str.count, by: rangeLength) {

            let startIndex = str.index(str.startIndex, offsetBy: index)
            let nextEndIndex = str.index(str.startIndex, offsetBy: index + rangeLength)
            let part = str[startIndex..<nextEndIndex]

            guard part == initial else { break }
            if nextEndIndex == str.endIndex {
              sum += i
              found = true
              break
            }
          }
          if found {
            break
          }
        }
      }
    }
    return sum
  }
}
