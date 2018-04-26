//
//  ListMatchTableViewCell.swift
//  UCU-WorldCup
//
//  Created by Gianni on 25/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class ListMatchTableViewCell: UITableViewCell {

    @IBOutlet weak var nameTeam1: UILabel!
    @IBOutlet weak var nameTeam2: UILabel!
    @IBOutlet weak var emblemTeam1: UIImageView!
    @IBOutlet weak var emblemTeam2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
