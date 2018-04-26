//
//  Match.swift
//  UCU-WorldCup
//
//  Created by SP29 on 19/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import Foundation

class Match {
    
    //let son constantes que sabemos que no van a cambiar para el partido, sino seria otro partido
    //var es para los eventos del partido que van a ir actulizandose conforme transcurra el mismo
    let team1: Team
    let team2: Team
    let stadium: Stadium
    var event: [Event] = []
    let dateHour: Date
    let group: String
    var goalsTeam1 = 0
    var goalsTeam2 = 0
    
    init(team1: Team,team2: Team,stadium:Stadium,date: Date, group:String){
        self.team1 = team1
        self.team2 = team2
        self.stadium = stadium
        self.dateHour = date
        self.group = group
    }
    
}
