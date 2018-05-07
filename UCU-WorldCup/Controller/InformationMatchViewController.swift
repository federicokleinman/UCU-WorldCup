//
//  InformationMatchViewController.swift
//  UCU-WorldCup
//
//  Created by Gianni on 21/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class InformationMatchViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    //TODO: En un futuro esto tiene que pasarle el match no cada cosa por separada
    
    //Match attributes
    var matchSelected: Match!
    var teamSelected: Team!
    var nameNextMatches: String!
    
    
    @IBOutlet weak var matchName: UILabel!
    @IBOutlet weak var stadiumPhoto: UIImageView!
    @IBOutlet weak var stadiumName: UILabel!
    @IBOutlet weak var teamEmblemOne: UIImageView!
    @IBOutlet weak var teamNameOne: UILabel!
    @IBOutlet weak var teamEmblemTwo: UIImageView!
    @IBOutlet weak var teamNameTwo: UILabel!
    @IBOutlet weak var dateTimeMatch: UILabel!
    
    @IBOutlet weak var eventsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventsTable.delegate = self
        eventsTable.dataSource = self
        
        
        stadiumPhoto.image = UIImage(named: matchSelected.stadium.photo)
        stadiumName.text = matchSelected.stadium.name
        teamEmblemOne.image = UIImage(named: matchSelected.team1.emblem)
        teamNameOne.text = matchSelected.team1.name
        teamEmblemTwo.image = UIImage(named: matchSelected.team2.emblem)
        teamNameTwo.text = matchSelected.team2.name
        let formatter = DateFormatter()
        let result = formatter.string(from: matchSelected.dateHour)
        dateTimeMatch.text = result
        matchName.text = "\(matchSelected.team1.acronym) V \(matchSelected.team2.acronym)"
        eventsTable.reloadData()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if let teamSelect = segue.destination as? TeamViewController {
            
            teamSelect.teamSelected = teamSelected
            teamSelect.nextMatchesSelected = nameNextMatches
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matchSelected.event.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.eventsTable.dequeueReusableCell(withIdentifier: "eventsIdentifier") as! ListEventsTableViewCell!
        let event = matchSelected.event[indexPath.row]
        
        cell!.minute.text = String(event.minute)
        if event.local == true{
            cell!.localEmoji.text = event.type
            cell!.localTeam.text = event.description
            cell!.aweyEmoji.text = ""
            cell!.aweyTeam.text = ""
        }else{
            cell!.localEmoji.text = ""
            cell!.localTeam.text = ""
            cell!.aweyEmoji.text = event.type
            cell!.aweyTeam.text = event.description
        }
        
        return cell!
    }
    
    
    
    @IBAction func localAction(_ sender: Any) {
        teamSelected = matchSelected.team1
        nameNextMatches = "Russia"
        performSegue(withIdentifier: "showTeam", sender: nil)
    }
    @IBAction func awayAction(_ sender: Any) {
        teamSelected = matchSelected.team2
        nameNextMatches = "Uruguay"
        performSegue(withIdentifier: "showTeam", sender: nil)
        
    }
    
}
