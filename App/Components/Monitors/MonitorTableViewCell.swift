//SI. class to enable binding of Montior table view cell objects and data within Monitors.swift and MonitorsTableViewController.

//SI. UIKit framework used for UITableViewCell, UIImageView and UILabel - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit

//SI. MonTableViewCell is defined as a member of UITableViewCell.
class MonitorTableViewCell: UITableViewCell {

    //SI. IBOutlets are used to connect the view within storyboard to code reprenting table view cells in  MonitorTableViewCell.swift.
    @IBOutlet weak var monImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screensizeLabel: UILabel!
    @IBOutlet weak var resolutionLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var skuLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

}
