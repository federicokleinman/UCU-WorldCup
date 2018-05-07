//
//  ListEventsTableViewCell.swift
//  UCU-WorldCup
//
//  Created by Gianni on 7/5/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class ListEventsTableViewCell: UITableViewCell {

    @IBOutlet weak var localEmoji: UILabel!
    
    @IBOutlet weak var localTeam: UILabel!
    
    @IBOutlet weak var minute: UILabel!
    @IBOutlet weak var aweyTeam: UILabel!
    
    @IBOutlet weak var aweyEmoji: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
