//
//  Magus.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 16/01/2021.
//

import Foundation

class Magus: Character {
    
    override init(name: String) {
        super.init(name: name)
        self.weapon = Wand()
        self.lifePoint = 150
        self.type = "Magus"
        self.isDead = false
    }
    
    static let lifePoint = 150
    static let weapon = "Wand"
    static let damage = 30
    static let description = "Don't underestimated his magic skills. \n Start life point: \(Magus.lifePoint)\n Start weapon: \(Magus.weapon) \n Healing: \(damage)"
}
