//
//  Weapon.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 12/02/2021.
//

import Foundation

// Class that includes the weapons parameters.
class Weapon {
    var name : String
    let damage: Int
    var type: WeaponType
    
    init(name: String, damage: Int, type: WeaponType) {
        self.name = name
        self.damage = damage
        self.type = type
    }
    
    enum WeaponType {
        case Attack, priest
    }
}
