//
//  Team.swift
//  UCU-WorldCup
//
//  Created by SP29 on 19/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import Foundation


class Team{
    
    var name = ""
    var emblem = ""
    var players: [Player] = []
    var acronym = ""
    
    init(name: String, emblem: String, players: [Player], acronym: String){
        self.name = name
        self.emblem = emblem
        self.players = players
        self.acronym = acronym
        
    }
    
    
    
}
