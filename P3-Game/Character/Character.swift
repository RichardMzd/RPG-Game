//
//  Character.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 15/01/2021.
//

import Foundation

// Class that includes differents methods such as characters details, attacking skills and healing.
class Character {
    
    var name: String
    var lifePoint: Int
    var weapon: Weapon
    var type: String
    var isDead: Bool
    
    init(name: String) {
        self.name = name
        self.lifePoint = 1
        self.weapon = Weapon(name: "", damage: 1, type: .Attack)
        self.type = "Class" 
        self.isDead = false
    }
    
    // Method which give you the details about the characters.
    func description() {
        print("\n Name:", self.name,
              "\n Type:", self.type,
              "\n life Point:", self.lifePoint,
              "\n Weapon:", self.weapon.name,
              "\n Damage:", self.weapon.damage)
    }
    
    // Method that allows the character to attack and reduce lifepoint of his opponent character's.
    func attack(_ target: Character) {
        target.lifePoint -= self.weapon.damage
        print(self.name, "" + "attack" + "",target.name)
        print(target.name, "lost", self.weapon.damage, "lifepoint")
        print(target.lifePoint, "lifepoint left to", target.name,"\n")
    }
    
    // Method that allows the character to heal one of his teammate or himself during his turn.
    func priest(_ target: Character) {
        target.lifePoint += self.weapon.damage
        print(self.name, "healed ", target.name)
        print(target.name, " winned ", self.weapon.damage,"lifepoint")
        print("remain", target.lifePoint, "of lifepoint to", target.name,"\n")
    }
}
