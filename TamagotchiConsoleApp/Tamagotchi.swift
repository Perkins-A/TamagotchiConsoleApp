//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Perkins, Alexander (ABH) on 30/11/2022.
//

import Foundation


class Tamagotchi {
    // ATTRIBUTES
    private var happiness: Int
    private var hunger: Int
    private var weight: Double
    private var age: Int
    private var sick: Bool
    
    // CONSTRUCTOR
    init() {
        self.happiness = 5
        self.hunger = 5
        self.weight = 10.0
        self.age = 0
        self.sick = false
    }
    
    
    // GETTERS
    func getHunger() -> Int {
        return self.hunger
    }
    func getHappiness() -> Int {
        return self.happiness
    }
    func getWeight() -> Double {
        return self.weight
    }
    func getAge() -> Int {
        return self.age
    }
    func isSick() -> Bool {
        return self.sick
    }
    
    // SETTERS
    func becomeSick() {
        sick = true
    }
    
    func growUp() {
        age += 1
    }
    func eatSnack() {
        if hunger >= 3 {
            self.hunger -= 3
        } else {
            self.hunger = 0
        }
        if weight <= 100 {
            self.weight += 1
        } else {
            self.weight = 99.99
        }
        if happiness <= 8 {
            self.happiness += 2
        } else {
            self.happiness = 10
        }
    }
}
