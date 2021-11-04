//
//  Chest.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 30/09/2021.
//

import Foundation

// Class that define the parameters of chest.
class Chest: Weapon {
    init() {
        super.init(name: "Dagger", damage: 200, type: WeaponType.Attack)
    }
}
