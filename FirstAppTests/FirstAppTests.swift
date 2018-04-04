//
//  FirstAppTests.swift
//  FirstAppTests
//
//  Created by Peter Larson on 3/8/18.
//  Copyright © 2018 Peter Larson. All rights reserved.
//

import XCTest

@testable import FirstApp

class FirstAppTests: XCTestCase {
    //MARK: Meal Class Tests
    
    //Confirm that the Meal initializer returns a Meal object when passed valid parameters
    func testMealInitializationSucceeds(){
        //Zero rating
        let zeroRatingMeal = Meal.init(name:"Zero",photo: nil, rating:0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo:nil,rating:5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails(){
        let negativeRatingMeal = Meal.init(name:"Negative",photo: nil, rating:-1)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating:0)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal.init(name:"large", photo:nil, rating:6)
        XCTAssertNil(largeRatingMeal)
    }
    
}
