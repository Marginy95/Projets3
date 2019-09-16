//
//  Fighter.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation

class Fighter:Character{

    static let fighterfLife=5
    static let fighterDammage=1000
    static let fighterdescription="Character with a low life maximun and a significant damage"
    static var fighterWeapon=Sword()
    static let fighterEmoji=" 2.🧟‍♂️ "

    init(name: String) {
        super.init(life:Fighter.fighterfLife, dammage:Fighter.fighterDammage, weapon:Fighter.fighterWeapon, typeCharacter:.Fighter, name:name, description:Fighter.fighterdescription, emoji:Fighter.fighterEmoji)
    }}
var myFighter=Fighter(name:"jj")
