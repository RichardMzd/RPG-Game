//
//  Dwarf.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 16/01/2021.
//

import Foundation


class Dwarf: Character {
    
   override init(name: String) {
        super.init(name: name)
        self.weapon = Crossbow()
        self.lifePoint = 130
        self.type = "Dwarf"
        self.isDead = false
    }
    
    static let lifePoint = 130
    static let weapon = "Crossbow"
    static let damage = 40
    static let description = "He might be short but he's faster than you think. \n Start life point: \(Dwarf.lifePoint)\n Start weapon: \(Dwarf.weapon) \n Damage: \(damage)"
}
