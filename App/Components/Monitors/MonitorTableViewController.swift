//SI. UIKit framework used to make UITableViewController available.
//https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit

//SI. UITableViewController manages Monitor table view by creating a controller object.
//https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewController_Class/index.html#//apple_ref/occ/cl/UITableViewController
class monitorTableViewController: UITableViewController {
    
    //SI. Variables passed through from pcTableViewController.
    var pcToDisplay: String! = nil
    var pcImage: UIImage! = nil
    var pcPrice: String! = nil
    
    //SI. Variables to pass to AccessoryTableViewController.
    var monForNextTableView: String!
    var monPriceForNextTableView: Double!
    var monImageForNextTableView: UIImage!
    
    //SI. clears array - added to prevent duplicate cell being loaded upon app reset.
    func clearMons() {
        monitors = []
    }
    
    //SI. Creates data in a function "loadTestMonitors".
    func loadTestMonitors()
    {
        let pic1 = UIImage(named: "MON1")
        let mon1 = Monitors(image: pic1, name: "Acer Pedator", screensize: "24", resolution: "A6", details: "IPS ZeroFrame Gaming Widescreen", sku: 465739, price: 219.95)
        
        let pic2 = UIImage(named: "MON2")
        let mon2 = Monitors(image: pic2, name: "Acer Pedator", screensize: "24", resolution: "1920x1080", details: "TN G-Sync 144Hz Gaming Widescreen LED", sku: 465740, price: 289.99)
        
        let pic3 = UIImage(named: "MON3")
        let mon3 = Monitors(image: pic3, name: "Acer CB290HU", screensize: "29", resolution: "2560x1080", details: "IPS SuperWidescreen LED", sku: 465741, price: 319.99)
        
        let pic4 = UIImage(named: "MON4")
        let mon4 = Monitors(image: pic4, name: "Acer Pedator XB27OHA", screensize: "27", resolution: "1920x1080", details: "TN G-Sync 144Hz Gaming Widescreen LED", sku: 465742, price: 389.99)
        
        let pic5 = UIImage(named: "MON5")
        let mon5 = Monitors(image: pic5, name: "Acer 4k2k S277HK", screensize: "27", resolution: "3840x2160", details: "IPS ZeroFrame Widescreen LED", sku: 465743, price: 419.99)
        
        let pic6 = UIImage(named: "MON6")
        let mon6 = Monitors(image: pic6, name: "Acer Predator XR341CKB", screensize: "34", resolution: "3440x1440", details: "IPS FREESYNC WideScreen Super-Wide Curved LED", sku: 465745, price: 799.99)
        
        let pic7 = UIImage(named: "MON7")
        let mon7 = Monitors(image: pic7, name: "Acer Predator X34", screensize: "34", resolution: "3440x1440", details: "IPS G-SYNC WideScreen Super-Wide ZeroFrame Curved LED", sku: 465746, price: 989.99)
        
        monitors += [mon1!, mon2!, mon3!, mon4!, mon5!, mon6!, mon7!] //SI. adds details stored in pc1,2 and 3 to monitors array.

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearMons() //SI. calls clearMons() which
        loadTestMonitors() //SI. run loadTestmonitors function when view loads which create PC information.
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1 //SI. function included in UITableViewController class. 1 section desired.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return monitors.count //SI. creates a row for each object in monitors array.
    }

    //SI. enabled protocol used for cell management. Best practice for when cells they are out of view, the data is dropped and cell can be reused.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //SI. created a constant for pcTableViewCell which was set earlier as the reuse identifier for the prototype cell in the table view controller.
        //SI. type of cell needs to be downcast to custom cell subclass (pcTableViewCell).
        let cellIdentifier = "MonitorTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MonitorTableViewCell
        let monitor = monitors[indexPath.row] //SI. retrieves current pc data for data source layout.
        
        //SI. text used for Strings, tag used for Ints. ssd is an optional variable so again required "!" to force unwrap.
        cell.nameLabel.text = monitor.name
        cell.monImageView.image = monitor.image
        cell.screensizeLabel.text = monitor.screensize
        cell.resolutionLabel.text = monitor.resolution
        cell.detailsLabel.text = String(monitor.details)+"TB"
        //cell.ssdLabel.text = String(pc.ssd)
        cell.priceLabel.text = String(monitor.price)
        cell.skuLabel.text = String(monitor.sku)
        //SI. add price as double in here - could not find.
        
        return cell
    }

    // SI. code runs immediately before seague to AccTableViewController.
    override internal func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "accSeague") { //SI. checks that seague identifier is accSeague.
            
            let nav = segue.destinationViewController as! UINavigationController
            let nextTableView = nav.topViewController as! AccTableViewController //SI. creates next view controller as an object, used to pass data to the next view controller.
            
            //SI. objects passed to accessoryTableViewController.
            nextTableView.pcToDisplay = pcToDisplay
            nextTableView.pcImage = pcImage
            nextTableView.pcPrice = pcPrice
            nextTableView.monToDisplay = (sender as! MonitorTableViewCell?)?.nameLabel.text
            nextTableView.monImage = (sender as! MonitorTableViewCell?)?.monImageView.image
            nextTableView.monPrice = (sender as! MonitorTableViewCell?)?.priceLabel.text
        }
    }
}


