//
//  InformationMatchViewController.swift
//  UCU-WorldCup
//
//  Created by Gianni on 21/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class InformationMatchViewController: UIViewController {
    
    //TODO: En un futuro esto tiene que pasarle el match no cada cosa por separada
    
    //Match attributes
    var matchSelected: Match!
    var teamSelected: Team!
   
    
    @IBOutlet weak var matchName: UILabel!
    @IBOutlet weak var stadiumPhoto: UIImageView!
    @IBOutlet weak var stadiumName: UILabel!
    @IBOutlet weak var teamEmblemOne: UIImageView!
    @IBOutlet weak var teamNameOne: UILabel!
    @IBOutlet weak var teamEmblemTwo: UIImageView!
    @IBOutlet weak var teamNameTwo: UILabel!
    @IBOutlet weak var dateTimeMatch: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        stadiumPhoto.image = UIImage(named: matchSelected.stadium.photo)
        stadiumName.text = matchSelected.stadium.name
        
        teamEmblemOne.image = UIImage(named: matchSelected.team1.emblem)
        teamNameOne.text = matchSelected.team1.name
        
        teamEmblemTwo.image = UIImage(named: matchSelected.team2.emblem)
        teamNameTwo.text = matchSelected.team2.name
        
        let formatter = DateFormatter()
        //let dayNumber = formatter.dateFormat = "dd.MM.yyyy"
        
        //let example = "\(dayNumber) de -"
        
        
        let result = formatter.string(from: matchSelected.dateHour)
        
        dateTimeMatch.text = result
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if let teamSelect = segue.destination as? TeamViewController {
            
            teamSelect.teamSelected = teamSelected
            
        }
        
    }
    
   

    @IBAction func localAction(_ sender: Any) {
        teamSelected = matchSelected.team1
        print ("Local")
        performSegue(withIdentifier: "showTeam", sender: nil)
    }
    @IBAction func awayAction(_ sender: Any) {
        teamSelected = matchSelected.team2
        print("Away")
        performSegue(withIdentifier: "showTeam", sender: nil)
        
    }
    
}
