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
    var sum = 0
    for bank in entities {
      let maxBattery = bank.max()!
      let maxIndex = bank.firstIndex(of: maxBattery)!
      let leftSplice = bank[0..<maxIndex]
      let rightSplice = bank[(maxIndex + 1)..<bank.count]
      let leftMax = leftSplice.max()
      let rightMax = rightSplice.max()
      var leftNumber: Int?
      var rightNumber: Int?
      if let leftMax {
        leftNumber = leftMax * 10 + maxBattery
      }
      if let rightMax {
        rightNumber = maxBattery * 10 + rightMax
      }
      sum += max(leftNumber ?? 0, rightNumber ?? 0)
    }
    return sum
  }

  func part2() -> Any {
    var sum = 0
    let multiplesArray = [100000000000, 10000000000, 1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1]
    for bank in entities {
      var number = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      for (batteryIndex, battery) in bank.enumerated() {
        var clean = false
        for (index, digit) in number.enumerated() {
          guard !clean else {
            number[index] = 0
            continue
          }
          if battery > digit && number.count - index <= bank.count - batteryIndex {
            number[index] = battery
            clean = true
          }
        }
      }
      sum += zip(number, multiplesArray).map(*).reduce(0, +)
    }
    return sum
  }
}
