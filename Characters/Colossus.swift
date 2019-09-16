//
//  Colossus.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation


class Colossus:Character{

    static let colossusLife=5
    static let colossusDammage=100
    static let colossusDescription="Character with a very weak life but a mortal damage"
    static var colossusWeapon=Punch()
    static var colossusEmoji=" 3.🧟‍♂️ "

    init(name:String) {
        super.init(life:Colossus.colossusLife, dammage:Colossus.colossusDammage, weapon:Colossus.colossusWeapon,typeCharacter:.Colossus,name:name, description:Colossus.colossusDescription, emoji:Colossus.colossusEmoji)
    }}
var myColossus=Colossus(name:"")
