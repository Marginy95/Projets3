//
//  Dwarf.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation

class Dwarf:Character{

    static let dwarfLife=5
    static let dwarfDammage=120
    static let dwarfdescription="Character with a low life maximun and a significant damage"
    static var dwarfWeapon=Chopped()
    static var dwarfEmoji=" 4.🦍 "

    init(name:String) {
        super.init(life:Dwarf.dwarfLife, dammage:Dwarf.dwarfDammage, weapon:Dwarf.dwarfWeapon,typeCharacter:.Dwarf,name:name, description:Dwarf.dwarfdescription, emoji:Dwarf.dwarfEmoji)
    }}
var myDwarf=Dwarf(name:"")
