//
//  InformationMatchViewController.swift
//  UCU-WorldCup
//
//  Created by Gianni on 21/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class InformationMatchViewController: UIViewController {
    
    
    var matchSelection: String!
    var stadiumPhotoSelection: UIImage!
    var stadiumNameSelection: String!
    var teamEmblemOneSelection: UIImage!
    var teamNameOneSelection: String!
    var teamEmblemTwoSelection: UIImage!
    var teamNameTwoSelection: String!
    
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
        
        matchName.text = matchSelection
        stadiumPhoto.image = stadiumPhotoSelection
        stadiumName.text = stadiumNameSelection
        teamEmblemOne.image = teamEmblemOneSelection
        teamNameOne.text = teamNameOneSelection
        teamEmblemTwo.image = teamEmblemTwoSelection
        teamNameTwo.text = teamNameTwoSelection
        
        
        
        
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
