//
//  TeamViewController.swift
//  UCU-WorldCup
//
//  Created by Gianni on 3/5/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController,UITableViewDelegate, UITableViewDataSource,UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    

    var teamSelected: Team!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var emblem: UIImageView!
    @IBOutlet weak var playersTable: UITableView!
    @IBOutlet weak var nextMatchesCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = teamSelected.name
        emblem.image = UIImage(named: teamSelected.emblem)
        
        playersTable.delegate = self
        playersTable.dataSource = self
        playersTable.reloadData()
        nextMatchesCollection.delegate = self
        nextMatchesCollection.dataSource = self
        nextMatchesCollection.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamSelected.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.playersTable.dequeueReusableCell(withIdentifier: "playerIdentifier") as! ListPlayerTableViewCell!
        
        let listPlayers = teamSelected.players[indexPath.row]
        
        let nameTeam = teamSelected.name
        cell!.team.text = nameTeam
        cell!.name.text = listPlayers.name
        cell!.number.text = String(listPlayers.number)
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Players"
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = nextMatchesCollection.dequeueReusableCell(withReuseIdentifier:"nextMatchIdentifier" , for: indexPath) as! NextMatchesCollectionViewCell
        
        
            cell.stadium.text = "Samara"
        cell.teamName.text = "Uruguay"
        cell.date.text = "25/2"
        
        return cell
    }
}
