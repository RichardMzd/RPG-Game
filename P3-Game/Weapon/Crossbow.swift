//
//  Crossbow.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 25/02/2021.
//

import Foundation


class Crossbow: Weapon {
    init() {
        super.init(name: "Crossbow", damage: 40, type: WeaponType.Attack)
    }
}
