//
//  pcTableViewCell.swift
//  mobile application test
//
//  Created by Sam Isaacs on 28/02/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//


//SI - created a new file to design table view cells.
import UIKit

//SI - It's a subclass of UITableViewCell
class pcTableViewCell: UITableViewCell {
    
    //SI. connecting code to UI - Xcode provdies functionality to ctrl click drag from UI to here.
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var graphicsLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    @IBOutlet weak var hddLabel: UILabel!
    @IBOutlet weak var ssdLabel: UILabel!
    @IBOutlet weak var ramLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var picImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
