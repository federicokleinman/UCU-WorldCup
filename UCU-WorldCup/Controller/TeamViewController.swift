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
    var nextMatchesSelected: String!
    var matchSelected: Match!
    
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
        
        if (teamSelected.players[indexPath.row].isTechnical){
            let cell = self.playersTable.dequeueReusableCell(withIdentifier: "technicalIdentifier") as! ListPlayerTableViewCell
            
            let listPlayers = teamSelected.players[indexPath.row]
            
            cell.nameTechnical.text = listPlayers.name
            cell.position.text = listPlayers.number
            return cell
        }
        else{
            let cell = self.playersTable.dequeueReusableCell(withIdentifier: "playerIdentifier") as! ListPlayerTableViewCell
            
            let listPlayers = teamSelected.players[indexPath.row]
            
            let nameTeam = listPlayers.team
            cell.team.text = nameTeam
            cell.name.text = listPlayers.name
            cell.number.text = listPlayers.number
                return cell
            
        }
    }
    
    func dateToString(date: Date) -> String{
        let format = DateFormatter()
        format.dateFormat = "dd/MM"
        let stringDate = format.string(from: date)
        return stringDate
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Players"
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teamSelected.nextMatches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let match = nextMatchesCollection.dequeueReusableCell(withReuseIdentifier:"nextMatchIdentifier" , for: indexPath) as! NextMatchesCollectionViewCell
        
        match.teamName.text = teamSelected.nextMatches[indexPath.row].team2.name
        match.stadium.text = teamSelected.nextMatches[indexPath.row].stadium.name
        match.date.text = dateToString(date: teamSelected.nextMatches[indexPath.row].dateHour)
        match.teamEmblem.image = UIImage(named: teamSelected.nextMatches[indexPath.row].team2.emblem)
        
        
        return match
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let informationMatch = segue.destination as? InformationMatchViewController {
            print(matchSelected.stadium.photo)
            informationMatch.matchSelected = matchSelected
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        matchSelected = teamSelected.nextMatches[indexPath.item]
        performSegue(withIdentifier: "showNextMatch", sender: nil)
    }
}
