//SI. class to enable binding of PC table view cell objects and data within PCs.swift and PcTableViewController.

//SI. UIKit framework used for UITableViewCell, UIImageView and UILabel - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit


//SI - pcTableViewCell is defined as a member of UITableViewCell.
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
    }

    override func setSelected(selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
}
