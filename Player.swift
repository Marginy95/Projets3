//
//  User.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation

class Player{
    var nameUser:[Character]=[]
    var nameCheck:[String]=[]
    var name:String
    init(name:String) {
        self.name=name
    }

    func control(target:String){
        //La fonction control nous permet d'encadrer l'utilisateur si il rentre un chiffre different de 1,2,3 nous lui demandons de taper une valeur
        if target != "0" && target != "1" && target != "2"    {
            print("Entrez une valeur correct")
            //Faire un repat while au lieu de if pas besoin appele fonction
        }else{
        }
    }

     func choiceCharacter(){
        //La fonction choiceCharacter permet d'afficher les personnages ainsi que leur description
        for character in typeCharacters {

            character.presenteCharacter()
        }
        if let choice=readLine(){
            if choice=="" {
            }
            switch choice{
            case "1":
                print("Quels noms donnez vous au Magus?")
                if let choice=readLine(){
                    if  checkName(name:choice) == true{
                       self.choiceCharacter()
                    }else{
                    nameCheck.append(choice)
                    nameUser.append(Magus(name: choice))
                    print("vous avez",nameUser.count,"Personnage")
                    }
                }
                case "2":
                        print("Quels noms donnez vous au Fighter?")
                if let choice=readLine(){
                    if  checkName(name:choice) == true{
                        self.choiceCharacter()
                    }else{
                        nameCheck.append(choice)
                        nameUser.append(Fighter(name: choice))
                    }
                }
                case "3":
                        print("Quels noms donnez vous au Colosse?")
                    if let choice=readLine(){
                        if  checkName(name:choice) == true{
                            self.choiceCharacter()
                        }else{
                            nameCheck.append(choice)
                            nameUser.append(Colossus(name: choice))
                        }
                }
                case "4":
                        print("Quels noms donnez vous au Dwarf?")
                        if let choice=readLine(){
                            if  checkName(name:choice) == true{
                                self.choiceCharacter()
                            }else{
                                nameCheck.append(choice)
                                nameUser.append(Dwarf(name: choice))
                            }
                }
                case "5":
                            print("Quels noms donnez vous au King?")
                            if let choice=readLine(){
                                if  checkName(name:choice) == true{
                                    self.choiceCharacter()
                                }else{
                                    nameCheck.append(choice)
                                    nameUser.append(King(name: choice))
                                }
                            }
                    default:
                            print("je n'ai pas compris")
                  //  let myPlayer=Player(name:choice)
                 //  return myPlayer.choiceCharacter()

            }


        }
                }

    func checkName(name:String)->Bool{
        //Cette fonction permet de verifier si le nom n'a pas deja ete choisi
        for i in nameCheck{
            if i == name{
                print("Votre prenom est deja choisi ")
                return true
            }else{
                return false
            }
        }
        return false
    }


    func choiceCharacterToFight(team:Player){
//fonction choiceCharacter permette aux utilisateurs de choisir leur personnage pour effectuer leur combats

        for (index,character) in self.nameUser.enumerated(){
            print("\(index)" ,"\(character.typeCharacter)","\(character.name)","\(character.life) ","\n")
        }
            if let myCharacter=readLine(){
                control(target:myCharacter)
                print("Vous avez choisi \(nameUser[Int(myCharacter)!].typeCharacter)")

                if Int.random(in: 1..<3)==SafeWeapon.weaponRandom{
                    nameUser[Int(myCharacter)!].weapon=Bonus()

                print("\(nameUser[Int(myCharacter)!].typeCharacter) votre nouvelle arme est \(nameUser[Int(myCharacter)!].weapon.damage) ")
               
                }
             //   if nameUser[Int(myCharacter)!].description==King.kingdescription{
//Si la description du personnage corresponds au personnage choisit nous appliquons les intructions pour le personnage bonus

                    //let myKing=King(name:"")
                  //  myKing.isKing(team:team)

                  //  var king=nameUser[Int(myCharacter)!]
                       // king.choiceAttack(character: <#T##Character#>)

               // }else{

                if nameUser[Int(myCharacter)!].description==Magus.magusDescription{
//Si la description du personnage corresponds au personnage choisit nous appliquons les intructions pour le personnage Mage a savoir le Soin
                    let myMagus=Magus(name:"")
                    myMagus.isMagus(team:self)
                }else{

            print("\(self.name) Quels personnage de l'equipe adverse voulez vous attaquer?","\n")
                    //Nous affichons la description de l'equipe adverse

        for (index,character) in team.nameUser.enumerated(){
              //Nous affichons la description de l'equipe adverse
            print("\(index)" ,"\(character.typeCharacter)","\(character.name)","\(character.life) ","\n")
        }
        if let target=readLine(){
            print("Vous avez choisi \(team.nameUser[Int(target)!].typeCharacter)")

            if self.nameUser[Int(myCharacter)!].description==King.kingdescription {

                for character in team.nameUser{

                    self.nameUser[Int(myCharacter)!].choiceAttack(character:character)
                    isAlive(team:team)
                }
            }

            else {

            self.nameUser[Int(myCharacter)!].choiceAttack(character:team.nameUser[Int(target)!])
                isAlive(team:team)

//Celui qui attaque c'est le self il fait reference a lui meme donc un coup Marginie corresponds a myCharacter et une fois le tour de steve alors il devient le self (myCharacter) grace au parametre team nous nous pouvons afficher l'adversaire

}              // }
}
}
}
}
    func isAlive(team:Player){
        for (index,character) in team.nameUser.enumerated(){

            if character.life==0{
                print("Le personnage \(character.typeCharacter)","est mort")
                team.nameUser.remove(at:index)
            }
        }
    }
}
