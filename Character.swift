//
//  Character.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation
var numberOfHits=0
var typeCharacters=[Magus(name: ""),Fighter(name:""),Colossus(name:""),Dwarf(name: ""),King(name: "")]

class Character{
    var life:Int
    var weapon:Weapon
    var dammage:Int
    var typeCharacter:typeCharacter
    var name:String
    var description:String
    var emoji:String

    init(life:Int,dammage:Int,weapon:Weapon,typeCharacter:typeCharacter,name:String,description:String,emoji:String) {
        self.life=life
        self.dammage=dammage
        self.weapon=weapon
        self.typeCharacter=typeCharacter
        self.name=name
        self.description=description
        self.emoji=emoji
    }


    func presenteCharacter(){
        print("",self.emoji,"Personnage:",self.typeCharacter,"Vie:",self.life,"Dommage:",self.dammage,"Description:",self.description)
}

    func receive(damage:Int){
        life = life - damage

        if life<=0{
            life=0
        }}


func choiceAttack(character:Character){
    numberOfHits+=1
    character.receive(damage:weapon.damage)

print("Une attaque de \(self.name) est envoye au \(character.name) la vie du \(character.name) est de \(character.life) ","\n")
    
}
    
}
 



/*
    func choiceCharacterToAttack(character:Character){
        for (index,character) in nameUser.enumerated(){
            print("\(index)","Character: \(character.typeCharacter)\n","Dammage:\(character.weapon.damage)\n", "Vie:\(character.life)\n", "Name:\(character.name)\n")
        }
        if let target1=readLine(){

            if Int(target1)! <= nameUser.count{
                print("Vous avez choisi \(nameUser[Int(target1)!].typeCharacter)")
            }

            // print("\(player1) Quels personnage de l'equipe adeverse voulez vous attaquer?")
            for (index,character) in nameUser.enumerated(){
                print("\(index)","Character: \(character.typeCharacter)\n","Dammage:\(character.weapon.damage)\n", "Vie:\(character.life)\n", "Name:\(character.name)\n")
            }
            if let target2=readLine(){
                if Int(target2)! <= nameUser.count{
                    print("Vous avez choisi \(nameUser[Int(target1)!].typeCharacter)")
                    //nameUser[Int(target1)!].attack(character:nameUser[Int(target2)!] )
                    nameUser[Int(target1)!].choiceAttack(character:nameUser)[Int(target1)!]
                }
            }

            }
        }
 }*/

