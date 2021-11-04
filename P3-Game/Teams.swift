//
//  Teams.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 18/02/2021.
//

import Foundation


class Teams {
    var characters = [Character]()

    init() {
    }

    func addCharacter(type: String, name: String) {
    
        if type == "Warrior" {
            characters.append(Warrior(name: name))
        } else if type == "Magus" {
            characters.append(Magus(name: name))
        } else if type == "Dwarf" {
            characters.append(Dwarf(name: name))
        } else if type == "Colossus" {
            characters.append(Dwarf(name: name))
        }
    }
}
