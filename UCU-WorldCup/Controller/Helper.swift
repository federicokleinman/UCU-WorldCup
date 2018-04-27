//
//  Helper.swift
//  UCU-WorldCup
//
//  Created by SP29 on 26/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import Foundation
class Helper {
    /*
     * Esta clase oficia de base de datos en esta primer instancia
     * La idea es instanciar todos los equipos, jugadores, partidos, etc
     */
    
    var allTeams: [Team] = []
    var playersUruguay: [Player] = []
    
    var uruguay: Team
    var egipto: Team
    var rusia: Team
    var arabia_saudita: Team
    
    var player1: Player
    
    init(){
        
        
        //TODO: Crear todos los jugadores
        self.player1 = Player(number: 1, team: "Nacional")
        
        //Create all temas
        self.uruguay = Team(name: "Uruguay", emblem: "uruguay", players: playersUruguay)
        self.egipto = Team(name: "Egipto", emblem: "egipto", players: playersUruguay)
        self.rusia = Team(name: "Rusia", emblem: "rusia", players: playersUruguay)
        self.arabia_saudita = Team(name: "Arabia Saudita", emblem: "arabia_saudita", players: playersUruguay)
    }
    
    
    
    
    
}
