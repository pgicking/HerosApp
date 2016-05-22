//
//  HeroTableViewCell.swift
//  HerosApp
//
//  Created by Peter Gicking on 5/21/16.
//  Copyright © 2016 Peter Gicking. All rights reserved.
//

import UIKit

class HeroTableViewCell: UITableViewCell {
    
    //MARK: Properties

    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroPortrait: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
