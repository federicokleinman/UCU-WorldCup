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
        //Uruguay Players
        let luisSuarez = Player(name:"Luis Suarez",number: "9", team: "Barcelona", isTechnical: false)
        let cavani = Player(name:"Edision Caviani",number: "21", team: "Paris Saint Germain", isTechnical: false)
        let tabarez = Player(name:"Oscar Washington Tabarez",number: "DT", team: "Uruguay", isTechnical: true)
        let pan = Player(name:"Alejandro Pan",number: "DR", team: "Uruguay", isTechnical: true)
        listPlayersUruguay.append(luisSuarez)
        listPlayersUruguay.append(cavani)
        listPlayersUruguay.append(tabarez)
        listPlayersUruguay.append(pan)
        
        //Rusia Players
        let playerRusia1 = Player(name:"Mirkov Putin",number: "7", team: "FC Zenit", isTechnical: false)
        let playerRusia2 = Player(name:"Valdimir Putin",number: "8", team: "FC Zenit", isTechnical: false)
        listPlayersRusia.append(playerRusia1)
        listPlayersRusia.append(playerRusia2)
        
        //Egipto Players
        let playerEgipto1 = Player(name:"Mohamed Salah",number: "9", team: "Liverpool", isTechnical: false)
        let playerEgipto2 = Player(name:"El Neni",number: "21", team: "Arsenal", isTechnical: false)
        listPlayersEgipto.append(playerEgipto1)
        listPlayersEgipto.append(playerEgipto2)
        
        //Arabia Players
        let playerArabiaSaudita1 = Player(name:"Fahad Al-Muwallad",number: "9", team: "Levante FC", isTechnical: false)
        let playerArabiaSaudita2 = Player(name:"Osama Hawsawi",number: "21", team: "Al-Hilal FC", isTechnical: false)
        listPlayersArabiaSaudita.append(playerArabiaSaudita1)
        listPlayersArabiaSaudita.append(playerArabiaSaudita2)
        
        //Teams Creation
        let teamUruguay = Team(name: "Uruguay", emblem: "uruguay", players: listPlayersUruguay, acronym: "URU", nextMatches: nextMatchesUruguay)
        let teamRusia = Team(name: "Russian", emblem: "rusia", players: listPlayersRusia, acronym: "RUS", nextMatches: nextMatchesRusia)
        let teamEgipto = Team(name: "Egipto", emblem: "egipto", players: listPlayersEgipto, acronym: "EGP", nextMatches: nextMatchesEgipto)
        let teamArabia = Team(name: "Arabia Saudita", emblem: "arabia saudita", players: listPlayersArabiaSaudita, acronym: "ASA", nextMatches: nextMatchesArabiaSaudita)
        
        //Stadiums
        let stadiumSamara = Stadium(name: "Samara Arena", photo: "Samara-Arena")
        let stadiumKazan = Stadium(name: "Kazan Arena", photo: "Kazan-Arena")
        
        //Date of matches
        let date = inicializeDateMatch(dd: 08, mm:04, yyyy: 2018, hour:18, min:30)
         let date2 = inicializeDateMatch(dd: 08, mm:07, yyyy: 2018, hour:18, min:30) //Fecha que aun no paso
        
        //Events of match URU vs RUS
        let event1 = Event(type: "⚽️", minute: 7, description: "Edision Caviani", local: true)
        listEventsMatch1.append(event1)
        let event2 = Event(type: "⚽️", minute: 19, description: "Luis Suarez", local: true)
        listEventsMatch1.append(event2)
        let event3 = Event(type: "🍋", minute: 46, description: "Mirkov Putin", local: false)
        listEventsMatch1.append(event3)
        let event4 = Event(type: "🍓", minute: 89, description: "Valdimir Putin", local: false)
        listEventsMatch1.append(event4)
        
        //Matches
        let uruVEgi = Match(team1: teamUruguay, team2: teamEgipto, stadium: stadiumSamara, date: date2, group: "A", event: listEventsMatch2, result: (0,0))
        
        let uruVAra = Match(team1: teamUruguay, team2: teamArabia, stadium: stadiumSamara, date: date2, group: "A", event: listEventsMatch2, result: (0,0))
        
        let rusVEgi = Match(team1: teamRusia, team2: teamEgipto, stadium: stadiumSamara, date: date2, group: "A", event: listEventsMatch2, result: (0,0))
        //Next Matches of Rusia
        teamRusia.nextMatches.append(rusVEgi)
        
        let uruVRus = Match(team1: teamUruguay, team2: teamRusia, stadium: stadiumSamara, date: date, group: "A", event: listEventsMatch1, result: (2,0))
        matches.append(uruVRus)
        //Next Matches of Uruguay
        teamUruguay.nextMatches.append(uruVEgi)
        teamUruguay.nextMatches.append(uruVAra)
        
        
        
        
        let egiVAra = Match(team1: teamEgipto, team2: teamArabia, stadium: stadiumKazan, date: date2, group: "A", event: listEventsMatch2, result: (0,0))
        matches.append(egiVAra)
        
       
        
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
