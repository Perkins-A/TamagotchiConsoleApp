//
//  TamagotchiTest.swift
//  TamagotchiTest
//
//  Created by Perkins, Alexander (ABH) on 30/11/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    func testWhenICreateTamagotchiItsWeightHungerAndAgeAreInitialisedTo0() {
        // arrange
        
        // act
        let terry = Tamagotchi()
        
        // assert
        XCTAssertEqual(terry.hungry, 0)
        XCTAssertEqual(terry.happiness, 0)
        XCTAssertEqual(terry.weight, 0.0)
    }
    
    func testThatEatingASnackReducesHungerIncreasesHappinessAndGainsWeight() {
        // arrange
        let hungryReduction = 3
        let happyIncrease = 2
        let weightGain = 1
        
        // act
        let terry = Tamagotchi()
        let startWeight = terry.weight
        let startHungry = terry.hungry
        let startHappiness = terry.happiness
        terry.eatASnack()
        
        // assert
        XCTAssertEqual(hungryReduction, <#T##expression2: Equatable##Equatable#>)
    }

}
