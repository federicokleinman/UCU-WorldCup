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
    
    var listPlayers: [Player] = []
    var listEvents: [Event] = []
    //let nameTeam = ["Uruguay","Rusia","Egipto","Arabia Saudita" ]
    //let emblemTeam = ["uruguay","rusia","egipto","arabia saudita"]
    
    var matchSelected: Match!
    var matches: [Match] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        matchesTable.delegate = self
        matchesTable.dataSource = self
        
        //objetos de prueba
        let player1 = Player(number: 9, team: "Uruguay")
        listPlayers.append(player1)
        var team1 = Team(name: "Uruguay", emblem: "uruguay", players: listPlayers)
        let stadium = Stadium(name: "Samara Arena", photo: "Samara-Arena")
        let date = Date()
        
        
        let event1 = Event(type: "Comienzo Partido", minute: 0, description: "Pitido inicial")
        listEvents.append(event1)
        let event2 = Event(type: "Gol", minute: 3, description: "Suarez marca")
        listEvents.append(event2)
        let event3 = Event(type: "Comienzo Partido", minute: 0, description: "Pitido inicial")
        listEvents.append(event3)
        let event4 = Event(type: "Comienzo Partido", minute: 0, description: "Pitido inicial")
        listEvents.append(event4)
        
        
        let match1 = Match(team1: team1, team2: team1, stadium: stadium, date: date, group: "A", event: listEvents)
        matches.append(match1)
        
        
        
        matchesTable.reloadData()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let informationMatch = segue.destination as? InformationMatchViewController {
            
            //TODO: Aca tengo que pasar de una el objeto Match
            //Atributos de Equipos
            
            informationMatch.matchSelected = matchSelected
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.matchesTable.dequeueReusableCell(withIdentifier: "matchIdentifier") as! ListMatchTableViewCell!
        let match = matches[indexPath.row]
        cell!.nameTeam1.text = match.team1.name
        cell!.emblemTeam1?.image = UIImage(named: match.team1.emblem)
        cell!.nameTeam2.text = match.team2.name
        cell!.emblemTeam2?.image = UIImage(named: match.team2.emblem)
        return cell!
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        matchSelected = matches[indexPath.row]
        performSegue(withIdentifier: "showMatch", sender: nil)
    }
}

