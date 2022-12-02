//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Perkins, Alexander (ABH) on 30/11/2022.
//

import Foundation


class Tamagotchi {
    
    private var happiness: Int
    private var hunger: Int
    private var weight: Double
    
    init() {
        self.happiness = 0
        self.hunger = 0
        self.weight = 10.0
    }
    
    func getHunger() -> Int {
        return self.hunger
    }
    func getHappiness() -> Int {
        return self.happiness
    }
    func getWeight() -> Double {
        return self.weight
    }
    
    func eatSnack() {
        if hunger >= 3 {
            self.hunger -= 3
        }
        if weight <= 100 {
            self.weight += 1
        }
        if happiness <= 
    }
}
