//
//  Warrior.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 16/01/2021.
//

import Foundation

class Warrior: Character {
    
    override init(name: String) {
        super.init(name: name)
        self.weapon = Sword()
        self.lifePoint = 180
        self.type = "Warrior"
        self.isDead = false
    }
    
    static let lifePoint = 180
    static let weapon = "Sword"
    static let damage = 50 
    static let description = "His sword will destroy you.\n Start life point: \(Warrior.lifePoint)\n Start weapon: \(Warrior.weapon) \n Damage: \(damage)"
}
