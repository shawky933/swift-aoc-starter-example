//
//  Day04.swift
//  AdventOfCode
//
//  Created by Shawky Elhanak on 04.12.25.
//

import Testing

@testable import AdventOfCode

struct Day04Tests {
  // Smoke test data provided in the challenge question
  let testData = """
  ..@@.@@@@.
  @@@.@.@.@@
  @@@@@.@.@@
  @.@@@@..@.
  @@.@@@@.@@
  .@@@@@@@.@
  .@.@.@.@@@
  @.@@@.@@@@
  .@@@@@@@@.
  @.@.@@@.@.
  """

  @Test func testPart1() async throws {
    let challenge = Day04(data: testData)
    #expect(String(describing: challenge.part1()) == "13")
  }

  @Test func testPart2() async throws {
    let challenge = Day04(data: testData)
    #expect(String(describing: challenge.part2()) == "0")
  }
}
