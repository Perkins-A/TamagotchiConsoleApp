//
//  TamagotchiTest.swift
//  TamagotchiTest
//
//  Created by Perkins, Alexander (ABH) on 30/11/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    func testWhenICreateTamagotchiItsWeightHungerAndAgeAreInitialisedToCorrectValue() {
        // arrange
        
        // act
        let terry = Tamagotchi()
        
        // assert
        XCTAssertEqual(terry.getHunger(), 5)
        XCTAssertEqual(terry.getHappiness(), 5)
        XCTAssertEqual(terry.getWeight(), 10.0)
    }
    
    
    
    func testThatEatingASnackReducesHungerIncreasesHappinessAndGainsWeight() {
        // arrange
        let hungerReduction = 3
        let happyIncrease = 2
        let weightGain = 1.0
        
        // act
        let terry = Tamagotchi()
        let startWeight = terry.getWeight()
        let startHunger = terry.getHunger()
        let startHappiness = terry.getHappiness()
        terry.eatSnack()
        
        // assert
        XCTAssertEqual(hungerReduction, startHunger - terry.getHunger())
        XCTAssertEqual(happyIncrease, terry.getHappiness() - startHappiness)
        XCTAssertEqual(weightGain, terry.getWeight() - startWeight)
    }
    
    func testThatAgeOfANewTamagotchiIsInitialisedToZero() {
        let terry = Tamagotchi()
        let expected = 0
        XCTAssertEqual(expected, terry.getAge())
    }
    
    func testThatSicknessOfANewTamagotchiIsInitialisedToFalse() {
        let terry = Tamagotchi()
        let expected = false
        XCTAssertEqual(expected, terry.isSick())
    }
    
    func testIfGrowingUpIncreaseAgeAttribute() {
        let terry = Tamagotchi()
        let expectedAge = terry.getAge() + 1
        terry.growUp()
        
        XCTAssertEqual(expectedAge, terry.getAge())
    }
    
    

}
