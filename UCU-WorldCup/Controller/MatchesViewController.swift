//
//  ViewController.swift
//  UCU-WorldCup
//
//  Created by SP29 on 19/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class MatchesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var matchesTable: UITableView!
    
    var listPlayersUruguay: [Player] = []
    var listPlayersRusia: [Player] = []
    var listEvents: [Event] = []
    
    var matchSelected: Match!
    var matches: [Match] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        matchesTable.delegate = self
        matchesTable.dataSource = self
        
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
        
        let team1 = Team(name: "Uruguay", emblem: "uruguay", players: listPlayersUruguay, acronym: "URU")
        let team2 = Team(name: "Russian", emblem: "rusia", players: listPlayersRusia, acronym: "RUS")
        
        let stadium = Stadium(name: "Samara Arena", photo: "Samara-Arena")
        
        let date = Date()
        
        
        let event1 = Event(type: "⚽️", minute: 7, description: "Edision Caviani", local: true)
        listEvents.append(event1)
        let event2 = Event(type: "⚽️", minute: 19, description: "Luis Suarez", local: true)
        listEvents.append(event2)
        let event3 = Event(type: "🍋", minute: 46, description: "Mirkov Putin", local: false)
        listEvents.append(event3)
        let event4 = Event(type: "🍓", minute: 89, description: "Valdimir Putin", local: false)
        listEvents.append(event4)
        
        
        let match1 = Match(team1: team1, team2: team2, stadium: stadium, date: date, group: "A", event: listEvents, result: (2,0))
        matches.append(match1)
        
        
        
        
        matchesTable.reloadData()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let informationMatch = segue.destination as? InformationMatchViewController {
            informationMatch.matchSelected = matchSelected
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.matchesTable.dequeueReusableCell(withIdentifier: "matchIdentifier") as! ListMatchTableViewCell!
        let match = matches[indexPath.row]
        //if (match.dateHour > Date()){
            cell!.resultTeam1.text = String(match.result!.0)
            cell!.resultTeam2.text = String(match.result!.1)
        //}
        cell!.nameTeam1.text = match.team1.name
        cell!.emblemTeam1?.image = UIImage(named: match.team1.emblem)
        cell!.nameTeam2.text = match.team2.name
        cell!.emblemTeam2?.image = UIImage(named: match.team2.emblem)
        cell!.stadiumName.text = match.stadium.name
        
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        //var fecha = formatter.date(from: match.dateHour)
        cell!.dateMatch.text = formatter.string(from:  match.dateHour)
        
        
        
        
        cell!.matchGroup.text = "Group \(match.group)"
        return cell!
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        matchSelected = matches[indexPath.row]
        performSegue(withIdentifier: "showMatch", sender: nil)
    }
}

