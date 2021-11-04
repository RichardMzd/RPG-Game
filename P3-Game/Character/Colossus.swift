//
//  Colossus.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 16/01/2021.
//

import Foundation

class Colossus: Character {
    
    override init(name: String) {
        super.init(name: name)
        self.weapon = Axe()
        self.lifePoint = 200
        self.type = "Colossus"
        self.isDead = false
    }
    
    static let lifePoint = 200
    static let weapon = "Axe"
    static let damage = 60
    static let description = "The Colossus is the only one strong enough to wield a heavy weapon \n Start life point: \(Colossus.lifePoint) \n Start weapon: \(Colossus.weapon) \n Damage: \(damage)"
}
