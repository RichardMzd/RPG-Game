//
//  Game.swift
//  P3-Game
//
//  Created by Richard Arif Mazid on 12/01/2021.
//

import Foundation

// Class were the main functions of the game is displayed, such as game launch, creation of the players & teams, random feature, end of the game.
class Game {
    
    // Setup game propreties
    var player1: Player
    var player2: Player
    var turnCounter = 0
    
    init() {
        player1 = Player(name: "👤 Player 1")
        player2 = Player(name: "👤 Player 2")
    }
    
    // Main method that allows the launch of the game.
    func startGame() {
        print("⚔️ Welcome to Fighter Spirit ! ⚔️\n")
    }
    
    // Method to create the two players.
    func createTeams() {
        player1.nameTeam(player2)
        player2.nameTeam(player1)
    }
    
    // Method that allows the players to select the characters available in the game.
    func selectCharacter(_ player: Player) {
        print("\n \(player.teamName) choose up to 3 characters :\n"
                + "\n1. Warrior: \(Warrior.description.self)\n"
                + "\n2. Magus: \(Magus.description.self)\n"
                + "\n3. Dwarf: \(Dwarf.description.self)\n"
                + "\n4. Colossus: \(Colossus.description.self)\n")
    }
    
    // Method which display all the characters choosen by the two players.
    func teamDisplay() {
        while player1.team.count < 3 && player2.team.count < 3 {
            selectCharacter(player1)
            player1.chooseCharacter()
            print("\(player1.teamName) here's your team 👇🏼 : \n",
                  "- \(Player.names[0])\n",
                  "- \(Player.names[1])\n",
                  "- \(Player.names[2])\n")
            selectCharacter(player2)
            player2.chooseCharacter()
            print("\(player2.teamName) here's your team 👇🏼 : \n",
                  "- \(Player.names[3])\n",
                  "- \(Player.names[4])\n",
                  "- \(Player.names[5])\n")
        }
    }
    
    // Method which display the winner of the game, his characters who's alive and the numbers of rounds played.
    func winnerDisplay() {
        print("🏆 END OF THE GAME 🏆\n")
        print("BATTLE RESULT:\n")
        print("Numbers of rounds played: \(turnCounter)")
        if isTeamAlive(player1) {
            let winnner = player1.teamName
            print("😜🎊\(winnner) has won the battle !🎊")
        } else {
            let winnner = player2.teamName
            print("😜🎊\(winnner) has won the battle !🎊")
        }
        selectedTeam(in: player1)
        selectedTeam(in: player2)
    }
    
    // Method in order to remove a character from player 1 or player 2 team's, if this one is dead.
    func isTeamAlive(_ player: Player) -> Bool {
        for(index, character) in player.team.enumerated() {
            if character.lifePoint <= 0 {
                player.team.remove(at: index)
            }
        }
        if player.team.count == 0 {
            return false
        }
        return true
    }
    
    // Method that allows the players to select their characters during the fight.
    func selectedTeam(in team : Player) {
        var numberChoice = 1
        for character in team.team {
            print("\(numberChoice) \(character.description())")
            numberChoice += 1
        }
    }
    
    // Method that will appears during the battle, providing a powerful weapon for a random player.
    func openChest(character: Character) {
        let anyNumber = Int.random(in: 0...6)
        if anyNumber == 2 {
            let newWeapon = Chest()
            print("A secret chest appears ! 🎁🤨")
            print("\(character.name) equips himself with the \(newWeapon.name) !")
            character.weapon = newWeapon
        }
    }
    
    // Method that allows the beginning of the fight between the two players.
    func fight() {
        var fighter = player1
        var ennemy = player2
        
        print("FIGHT ! 🥊\n")
        while isTeamAlive(fighter) && isTeamAlive(ennemy) {
            print("\(fighter.teamName) Choose your fighter 🥋:")
            
            selectedTeam(in: fighter)
            let chooseCharacter = fighter.selectedCharacter(fighter.team)
            
            if chooseCharacter is Magus {
                openChest(character: chooseCharacter)
                print("\(fighter.teamName) heal one of your character ⛑\n")
                selectedTeam(in: fighter)
                let mate = fighter.selectedCharacter(fighter.team)
                let magus = chooseCharacter as! Magus
                magus.priest(mate)
            } else {
                openChest(character: chooseCharacter)
                print("\n\(fighter.teamName) 🆚 \(ennemy.teamName)",
                      "Choose your opponent 🤜🏼🤛🏼:")
                selectedTeam(in: ennemy)
                let choice = fighter.selectedCharacter(ennemy.team)
                let target = choice
                chooseCharacter.attack(target)
                
                if target.lifePoint <= 0 {
                    target.lifePoint = 0
                    print("\(target.name) is dead ☠️\n")
                }
            }
            turnCounter += 1
            // allow to exchange (swap) 2 location adresses
            swap(&ennemy, &fighter)
        }
    }
}

