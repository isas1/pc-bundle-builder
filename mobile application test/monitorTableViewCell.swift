//
//  monitorTableViewCell.swift
//  mobile application test
//
//  Created by Sam Isaacs on 02/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

import UIKit

class monitorTableViewCell: UITableViewCell {
    @IBOutlet weak var monImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screenSizeLabel: UILabel!
    @IBOutlet weak var resolutionLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var skuLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
