//
//  King.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation

class King:Character{
//var nameUser:[Character]=[]
    static let kingLife=5
    static let kingDammage=80
    static let kingdescription="Character with two attack"
    static let kingWeapon=Kills()
    static let kingEmoji=" 5.🤴 "

    init(name:String) {
        super.init(life:King.kingLife, dammage:King.kingDammage, weapon:King.kingWeapon, typeCharacter:.King, name:name, description: King.kingdescription, emoji: King.kingEmoji)
    }

}

