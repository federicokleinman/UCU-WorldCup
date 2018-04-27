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
    let nameTeam = ["Uruguay","Rusia","Egipto","Arabia Saudita" ]
    let emblemTeam = ["uruguay","rusia","egipto","arabia saudita"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        matchesTable.delegate = self
        matchesTable.dataSource = self
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
            informationMatch.teamOneNameSelection = "Uruguay"
            informationMatch.teamTwoNameSelection = "Egipto"
            informationMatch.teamOneEmblemSelection = "uruguay"
            informationMatch.teamTwoEmblemSelection = "eqipto"
            
            informationMatch.matchSelection = "Prueba"
            informationMatch.stadiumPhotoSelection = "Prueba"
            informationMatch.stadiumNameSelection = "Prueba"
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.matchesTable.dequeueReusableCell(withIdentifier: "matchIdentifier") as! ListMatchTableViewCell!
        
        cell!.nameTeam1.text = nameTeam[indexPath.row]
        cell!.emblemTeam1?.image = UIImage(named: emblemTeam[indexPath.row])
        cell!.nameTeam2.text = nameTeam[indexPath.row+1]
        cell!.emblemTeam2?.image = UIImage(named: emblemTeam[indexPath.row+1])
        return cell!
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showMatch", sender: nil)
    }
}

