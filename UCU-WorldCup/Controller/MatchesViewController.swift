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
    
    
    
    var matchSelected: Match!
    var matches: [Match] = []
    var help = Helper()
    //var help: Helper?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        matchesTable.delegate = self
        matchesTable.dataSource = self
        
        matches = help.startConfig()
        
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
    
   
    
    func dateToString(date: Date) -> String{
        let format = DateFormatter()
        format.dateFormat = "dd MMMM - HH:mm"
        let stringDate = format.string(from: date)
        return stringDate
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.matchesTable.dequeueReusableCell(withIdentifier: "matchIdentifier") as! ListMatchTableViewCell
        let match = matches[indexPath.row]
        
        if (match.dateHour < Date()){
            cell.resultTeam1.text = String(match.result!.0)
            cell.resultTeam2.text = String(match.result!.1)
        }else{
            cell.resultTeam1.text = ""
            cell.resultTeam2.text = ""
        }
        
        cell.nameTeam1.text = match.team1.name
        cell.emblemTeam1?.image = UIImage(named: match.team1.emblem)
        cell.nameTeam2.text = match.team2.name
        cell.emblemTeam2?.image = UIImage(named: match.team2.emblem)
        cell.stadiumName.text = match.stadium.name
        
        let stringDate = dateToString(date: match.dateHour)
        cell.dateMatch.text = stringDate
        
        cell.matchGroup.text = "Group \(match.group)"
        return cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        matchSelected = matches[indexPath.row]
        performSegue(withIdentifier: "showMatch", sender: nil)
    }
}

