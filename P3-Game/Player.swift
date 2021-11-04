//
//  Player.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 17/03/2021.
//

import Foundation

// Class which contains the methods to create the players, setting a nametag, but also for the characters they have choosen.
class Player {
    // Class Player propreties
    static var names = [String]()
    var team = [Character]()
    var name: String
    var teamName = String()
    
    init(name: String) {
        self.name = name
    }
    
    // Method which appears at the beginning of the game, by asking to set a name.
    func nameTeam(_ target: Player) {
        print("\(self.name) what is your name ? :")
        if let name = readLine() {
            self.teamName = name
        }
        //  Here both player can't have the same name, so it will suggest you to put another name.
        if self.teamName == target.teamName {
            print("\(self.name) choose a different name than \(target.name).")
            self.nameTeam(target)
        } else {
            print("Hello \(self.teamName) ! 😃\n")
        }
    }
    
    // Method in order to say that the name given for a character already exists.
    func nameCharacter() -> String {
        if let namePlayer = readLine() {
            let choice = namePlayer
            if Player.names.contains(choice) {
                print("This name already exists !")
                print("Please choose another name")
            } else {
                return choice
            }
        }
        return nameCharacter()
    }
    
    // Method that allows both players to choose their characters. Remind that both players can choose until three characters maximum.
    func chooseCharacter() {
        while team.count < 3 {
            if let characterTeam = readLine() {
                switch characterTeam {
                case "1":
                    print("You chose the \(Warrior.self),",
                          "what do you want to call it ? 🤔")
                    let name = nameCharacter()
                    let warrior = Warrior(name: name)
                    team.append(warrior)
                    Player.names.append(name)
                    print("\(warrior.name) was added to your team \n")
                case "2":
                    print("You choose the \(Magus.self),",
                          "What do you want to call it ? 🤔")
                    let name = nameCharacter()
                    let magus = Magus(name: name)
                    team.append(magus)
                    Player.names.append(name)
                    print("\(magus.name) was added to your team \n")
                case "3":
                    print("You choose the \(Dwarf.self),",
                          "What do you want to call it ? 🤔")
                    let name = nameCharacter()
                    let dwarf = Dwarf(name: name)
                    team.append(dwarf)
                    Player.names.append(name)
                    print("\(dwarf.name) was added to your team \n")
                case "4":
                    print("You choose the \(Colossus.self),",
                          "What do you want to call it ? 🤔")
                    let name = nameCharacter()
                    let colossus = Colossus(name: name)
                    team.append(colossus)
                    Player.names.append(name)
                    print("\(colossus.name) was added to your team \n")
                default:
                    print("I don't understand ! 🤷🏼‍♂️")
                    chooseCharacter()
                }
            }
        }
    }
    
    // Method to display the current team during the battle
    func selectedCharacter(_ team: [Character] ) -> Character  {
        for _ in team.enumerated() {
            if let choice = readLine() {
                if let choiceNumber = Int(choice) {
                    if choiceNumber >= 1 && choiceNumber <= team.count {
                        return team[choiceNumber - 1]
                    }
                }
            }
        }
        return selectedCharacter(team)
    }
}
