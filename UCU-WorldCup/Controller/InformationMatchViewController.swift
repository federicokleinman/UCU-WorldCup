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
    var matchSelection: String?
    
    //Stadium attributes
    var stadiumPhotoSelection: String!
    var stadiumNameSelection: String?
    
    //Team One attributes
    var teamOneEmblemSelection: String! //esta es la ruta a la imagen en assets
    var teamOneNameSelection: String?
    
    //Team Two attributes
    var teamTwoEmblemSelection: String! //esta es la ruta a la imagen en assets
    var teamTwoNameSelection: String?
    
    
    
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
        
        stadiumPhoto.image = UIImage(named: stadiumPhotoSelection)
        stadiumName.text = stadiumNameSelection
        
        teamEmblemOne.image = UIImage(named: teamOneEmblemSelection)
        teamNameOne.text = teamOneNameSelection
        
        teamEmblemTwo.image = UIImage(named: teamTwoEmblemSelection)
        teamNameTwo.text = teamTwoNameSelection
        
        
        
        
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
