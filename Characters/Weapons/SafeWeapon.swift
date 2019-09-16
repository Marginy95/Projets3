//
//  SafeWeapon.swift
//  projetN3
//
//  Created by Margini on 17/08/2019.
//  Copyright © 2019 Marginy. All rights reserved.
//

import Foundation


class SafeWeapon:Character{
    static var safeWeaponWeapon=Bonus()
    static let weaponRandom=1

      func random()->Bool{
        if Int.random(in: 1..<3)==SafeWeapon.weaponRandom{
            return true
        }else{
            return false
        }

    }


}
