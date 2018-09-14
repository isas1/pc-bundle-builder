//SI. class to enable binding of Accessory table view cell objects and data within Accessories.swift and AccTableViewController.

//SI. UIKit framework used for UITableViewCell, UIImageView and UILabel - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit

//SI. AccTableViewCell is defined as a member of UITableViewCell.
class AccTableViewCell: UITableViewCell {

    @IBOutlet weak var accImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var skuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
