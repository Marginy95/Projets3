//
//  Party.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation

var arrayPlayer:[Player]=[]
//Tableau qui de Type Player qui stock les Players
var nomberOfTurns=0
var myParty=Party()
//Intance de la class party
var nameUser:[Character]=[]
class Party{
//Declaration de la classe party

    func presentation(){
        //Fonction Presentation regroupant le choix de nom et choix Personnage
    var user: Int = 1
    repeat {
    print("###############---🗡️ 🗡️ ---Bonjour et bienvenue dans le jeux de combat--🗡️ 🗡️ --###############")
    print(" user \(user) Quels est votre prenom?")
        if let choice=readLine(){
            if choice == ""{

            }
            print("Vous prenoms est \(choice)")
             let player=Player(name:choice)
            arrayPlayer.append(player)


        print(" user \(choice) quels personnage choisissez vous?","\n")

        while player.nameUser.count < 3{
            player.choiceCharacter()
        }

        }
        
        user += 1
    } while user <= 2
        
        func fight(){
            //Fonction qui lance les combats

            let attacker=arrayPlayer[0]
            let defender=arrayPlayer[1]
            // attacker et defender permette de recupere les noms des personnage dans l'index [0] et [1] en l'absence d'instance

            while attacker.nameUser.count > 0 && defender.nameUser.count > 0 {
                //Le while nous permet de repeter l'action attaquer tant que une des deux equipe a plus d'un joueur dans son equipe
                print("\(attacker.name) Quels personnage choisissez vous?","\n")
                attacker.choiceCharacterToFight(team:defender)

                if defender.nameUser.count > 0 {
                    print("\(defender.name) Quels personnage choisissez vous?","\n")
                    defender.choiceCharacterToFight(team:attacker)

                }
        }
        }
    fight()
    }

}
