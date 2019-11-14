//
//  HomeTableViewCell.swift
//  HelloWorldReactive
//
//  Created by Shahid Latif on 14/11/2019.
//  Copyright © 2019 Shahid Latif. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryNameLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
