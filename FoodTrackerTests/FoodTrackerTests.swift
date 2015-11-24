//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Noah Balsmeyer on 11/17/15.
//  Copyright (c) 2015 NBalsmeyer. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Tests to confirm the meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
}
