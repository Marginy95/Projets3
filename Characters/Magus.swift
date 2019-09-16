//
//  Magus.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation

class Magus:Character{
var nameUser:[Character]=[]
    static let magusDescription = "character who can just heal"
    static var magusLife = 20
    static let magusEmoji = " 1.🕊️ "

    init(name: String) {
        super.init(life:Magus.magusLife,dammage:10,weapon:Sting(), typeCharacter:.Magus, name:name, description:Magus.magusDescription, emoji: Magus.magusEmoji)
    }

    func isMagus(team:Player){
        print("Quels personne de votre equipe voulez vous soigner?")

    for (player,character) in team.nameUser.enumerated(){
    print("\(player)" ,"\(character.typeCharacter)","\(character.name)","\(character.dammage) ","\n")
        }
        if let choice=readLine(){
            team.nameUser[Int(choice)!].life += self.weapon.damage

            print("Un soin de \(self.weapon.damage) est envoye \(team.nameUser[Int(choice)!].typeCharacter) sa vie est \(team.nameUser[Int(choice)!].life)")
        }
}
}
