//
//  ListPlayerTableViewCell.swift
//  UCU-WorldCup
//
//  Created by Gianni on 3/5/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import UIKit

class ListPlayerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var team: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
