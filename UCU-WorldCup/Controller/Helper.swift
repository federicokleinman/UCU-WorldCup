//
//  Helper.swift
//  UCU-WorldCup
//
//  Created by SP29 on 26/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import Foundation

class Helper {
    var listPlayersUruguay: [Player] = []
    var listPlayersRusia: [Player] = []
    var listEventsMatch1: [Event] = []
    var listEventsMatch2: [Event] = []
    var matches: [Match] = []
    var nextMatchesUruguay: [Match] = []
    var nextMatchesRusia: [Match] = []
    var nextMatchesEgipto: [Match] = []
    var nextMatchesArabiaSaudita: [Match] = []
    
    var listPlayersEgipto: [Player] = []
    var listPlayersArabiaSaudita: [Player] = []
    
     init(){}
    
    func startConfig() -> [Match]{
        //objetos de prueba
        let player1 = Player(name:"Luis Suarez",number: "9", team: "Barcelona", isTechnical: false)
        let player2 = Player(name:"Edision Caviani",number: "21", team: "Paris Saint Germain", isTechnical: false)
        let playerDt = Player(name:"Oscar Washington Tabarez",number: "DT", team: "Uruguay", isTechnical: true)
        let playerDoc = Player(name:"Alejandro Pan",number: "DR", team: "Uruguay", isTechnical: true)
        listPlayersUruguay.append(player1)
        listPlayersUruguay.append(player2)
        listPlayersUruguay.append(playerDt)
        listPlayersUruguay.append(playerDoc)
        let player3 = Player(name:"Mirkov Putin",number: "7", team: "FC Zenit", isTechnical: false)
        let player4 = Player(name:"Valdimir Putin",number: "8", team: "FC Zenit", isTechnical: false)
        listPlayersRusia.append(player3)
        listPlayersRusia.append(player4)
        
        let team1 = Team(name: "Uruguay", emblem: "uruguay", players: listPlayersUruguay, acronym: "URU", nextMatches: nextMatchesUruguay)
        let team2 = Team(name: "Russian", emblem: "rusia", players: listPlayersRusia, acronym: "RUS", nextMatches: nextMatchesRusia)
        
        
        let stadium = Stadium(name: "Samara Arena", photo: "Samara-Arena")
        
        let date = inicializeDateMatch(dd: 08, mm:04, yyyy: 2018, hour:18, min:30)
        
        let event1 = Event(type: "⚽️", minute: 7, description: "Edision Caviani", local: true)
        listEventsMatch1.append(event1)
        let event2 = Event(type: "⚽️", minute: 19, description: "Luis Suarez", local: true)
        listEventsMatch1.append(event2)
        let event3 = Event(type: "🍋", minute: 46, description: "Mirkov Putin", local: false)
        listEventsMatch1.append(event3)
        let event4 = Event(type: "🍓", minute: 89, description: "Valdimir Putin", local: false)
        listEventsMatch1.append(event4)
        
        
        let match1 = Match(team1: team1, team2: team2, stadium: stadium, date: date, group: "A", event: listEventsMatch1, result: (2,0))
        matches.append(match1)
        
        team1.nextMatches.append(match1)
        team1.nextMatches.append(match1)
        team2.nextMatches.append(match1)
        
        let playerEgipto1 = Player(name:"Mohamed Salah",number: "9", team: "Liverpool", isTechnical: false)
        let playerEgipto2 = Player(name:"El Neni",number: "21", team: "Arsenal", isTechnical: false)
        listPlayersEgipto.append(playerEgipto1)
        listPlayersEgipto.append(playerEgipto2)
        let playerArabiaSaudita1 = Player(name:"Fahad Al-Muwallad",number: "9", team: "Levante FC", isTechnical: false)
        let playerArabiaSaudita2 = Player(name:"Osama Hawsawi",number: "21", team: "Al-Hilal FC", isTechnical: false)
        listPlayersArabiaSaudita.append(playerArabiaSaudita1)
        listPlayersArabiaSaudita.append(playerArabiaSaudita2)
        let team3 = Team(name: "Egipto", emblem: "egipto", players: listPlayersEgipto, acronym: "EGP", nextMatches: nextMatchesEgipto)
        let team4 = Team(name: "Arabia Saudita", emblem: "arabia saudita", players: listPlayersArabiaSaudita, acronym: "ASA", nextMatches: nextMatchesArabiaSaudita)
        let stadium2 = Stadium(name: "Kazan Arena", photo: "Kazan-Arena")
        let date2 = inicializeDateMatch(dd: 08, mm:07, yyyy: 2018, hour:18, min:30)
        
        let match2 = Match(team1: team3, team2: team4, stadium: stadium2, date: date2, group: "A", event: listEventsMatch2, result: (0,0))
        matches.append(match2)
        return matches
    }
    
    func inicializeDateMatch(dd: Int, mm:Int, yyyy: Int, hour:Int, min:Int) -> Date{
        var dateComponents = DateComponents()
        dateComponents.year = yyyy
        dateComponents.month = mm
        dateComponents.day = dd
        dateComponents.timeZone = TimeZone(abbreviation: "JST") // Japan Standard Time
        dateComponents.hour = hour
        dateComponents.minute = min
        
        // Create date from components
        let userCalendar = Calendar.current // user calendar
        
        return userCalendar.date(from: dateComponents)!
    }
    
    
}
