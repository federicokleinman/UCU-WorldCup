//
//  Player.swift
//  UCU-WorldCup
//
//  Created by SP29 on 19/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import Foundation

class Player{
    var name = ""
    var number = ""
    var team = ""
    var isTechnical = false
    init(name:String,number: String, team: String, isTechnical: Bool ){
        self.name = name
        self.number = number
        self.team = team
        self.isTechnical = isTechnical
    }
    
}
