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
    let emblemTeam = ["/Applications/App Xcode/UCU-WorldCup/UCU-WorldCup/Assets.xcassets/emblem/uruguay.imageset/uruguay.gif","/Applications/App Xcode/UCU-WorldCup/UCU-WorldCup/Assets.xcassets/emblem/rusia.imageset/rusia.gif","/Applications/App Xcode/UCU-WorldCup/UCU-WorldCup/Assets.xcassets/emblem/egipto.imageset/egipto.gif","/Applications/App Xcode/UCU-WorldCup/UCU-WorldCup/Assets.xcassets/emblem/arabia saudita.imageset/arabia saudita.gif"]
    
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
 
    
}

