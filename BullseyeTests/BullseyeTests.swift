//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Runyasak Chaengnaimuang on 30/1/2564 BE.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExample() throws {
        XCTAssertEqual((game.points(sliderValue: 50)), 999)
    }
}
