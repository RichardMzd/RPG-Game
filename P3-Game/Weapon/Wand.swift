//
//  Wand.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 25/02/2021.
//

import Foundation


class Wand: Weapon {
    init() {
        super.init(name: "Wand", damage: 30, type: WeaponType.Attack)
    }
}
