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
        
        //Hay que conectar el matchName a un outlet
        //Cambio
        //matchName.text = matchSelection
        
        stadiumPhoto.image = UIImage(named: matchSelected.stadium.photo)
        stadiumName.text = matchSelected.stadium.name
        
        teamEmblemOne.image = UIImage(named: matchSelected.team1.emblem)
        teamNameOne.text = matchSelected.team1.name
        
        teamEmblemTwo.image = UIImage(named: matchSelected.team2.emblem)
        teamNameTwo.text = matchSelected.team2.name
        
        let dayNumber = 20
        let example = "\(dayNumber) de -"
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: matchSelected.dateHour)
        
        dateTimeMatch.text = result
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
