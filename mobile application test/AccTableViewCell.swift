//
//  AccTableViewCell.swift
//  mobile application test
//
//  Created by Sam Isaacs on 13/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

//SI - class to design table view cells.

//SI. UIKit framework used for UITableViewCell, UIImageView and UILabel.
import UIKit

class AccTableViewCell: UITableViewCell {

    @IBOutlet weak var accImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var skuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
