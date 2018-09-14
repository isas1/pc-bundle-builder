//SI. UIKit framework used to make UITableViewController available. Please see development section of documentation for all uses of UIKit - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit

//SI. UITableViewController class to manage Accessory table view.
class AccTableViewController: UITableViewController {
    
    //SI. Initialises monitors with an empty array of objects from Montior() class.
    var accessories = [Accessories]()
    
    //SI. declaration of variables recieved from pcTableViewController.
    var pcToDisplay: String! = nil
    var pcImage: UIImage! = nil
    var pcPrice: String! = nil
    
    //SI. declaration of variables recieved from monTableViewController.
    var monToDisplay: String! = nil
    var monImage: UIImage! = nil
    var monPrice: String! = nil
    
    //SI. Variables to pass to CurrentSelectionsTableViewController.
    var accForNextTableView: String!
    var accPriceForNextTableView: String!
    var accImageForNextTableView: UIImage!
    
    //SI. clears array - added to prevent duplicate cell being loaded upon app reset.
    func clearAcc() {
        
        accessories = []
    }
    
    //SI. Creates data in a function "loadTestMonitors".
    func loadTestAccessories() {
        
        let pic1 = UIImage(named: "ACC1")
        let acc1 = Accessories(image: pic1, desc: "SSD Samsung", sku: 464800, price: "59.99")
        
        let pic2 = UIImage(named: "ACC2")
        let acc2 = Accessories(image: pic2, desc: "HDD Seagate", sku: 464801, price: "41.99")
        
        let pic3 = UIImage(named: "ACC3")
        let acc3 = Accessories(image: pic3, desc: "GeForce GTX 970 4GB \"Black Edition\" Graphics Card", sku: 0, price: "289.99")
        
        let pic4 = UIImage(named: "ACC4")
        let acc4 = Accessories(image: pic4, desc: "GeForce GTX 970 4GB \"Infin8 Black Edition\" Graphics Card", sku: 0, price: "275.99")
        
        let pic5 = UIImage(named: "ACC5")
        let acc5 = Accessories(image: pic5, desc: "Bundle B6", sku: 464818, price: "399.99")
        
        let pic6 = UIImage(named: "ACC6")
        let acc6 = Accessories(image: pic6, desc: "Power Supply 550W Cougar", sku: 464819, price: "37.99")
        
        let pic7 = UIImage(named: "ACC7")
        let acc7 = Accessories(image: pic7, desc: "Headset Mars MH1", sku: 464820, price: "14.99")
        
        let pic8 = UIImage(named: "ACC8")
        let acc8 = Accessories(image: pic8, desc: "Zowie FK2", sku: 464835, price: "49.99")
        
        let pic9 = UIImage(named: "ACC9")
        let acc9 = Accessories(image: pic9, desc: "Mouse Cougar 600M Black", sku: 0, price: "14.99")
        
        accessories += [acc1!, acc2!, acc3!, acc4!, acc5!, acc6!, acc7!, acc8!, acc9!] //SI. adds details to array.
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        clearAcc() //SI. resets to an empty array.
        loadTestAccessories()//SI. run loadTestmonitors function when view loads which create PC information.
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1 //SI. function included in UITableViewController class. 1 section desired.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return accessories.count //SI. creates a row for each object in monitors array.
    }
    
    //SI. enabled protocol used for cell management. Best practice for when cells they are out of view, the data is dropped and cell can be reused.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "AccTableViewCell" //SI. created a constant for pcTableViewCell which was set earlier as the reuse identifier for the prototype cell in the AccTableViewController.
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! AccTableViewCell //SI. type of cell needs to be downcast to custom cell subclass (AccTableViewCell).
        let accessory = accessories[indexPath.row] //SI. retrieves current pc data for data source layout.
        
        //SI. text used for Strings, tag used for Ints. ssd is an optional variable so again required "!" to force unwrap.
        cell.descLabel.text = accessory.desc
        cell.accImageView.image = accessory.image
        cell.priceLabel.text = String(accessory.price)
        cell.skuLabel.text = String(accessory.sku)
        //SI. add price as double in here - could not find.
        
        return cell
    }
    
    // SI. code runs immediately before seague to CurrentSelectionsTableViewController.
    override internal func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "summarySegue") { //SI. checks that seague identifier is summarySegue.
            
            let nav = segue.destinationViewController as! UINavigationController
            let nextTableView = nav.topViewController as! CurrentSelectionViewController //SI. creates next view controller as an object, used to pass data to the next view controller.
            
            //SI. objects from previous views passed to CurrentSelectionsTableViewController.
            nextTableView.pcToDisplay = pcToDisplay
            nextTableView.pcImage = pcImage
            nextTableView.pcPrice = pcPrice
            nextTableView.monToDisplay = monToDisplay
            nextTableView.monImage = monImage
            nextTableView.monPrice = monPrice
            
            //SI. Values from current view to be passed to CurrentSelctionsViewController.
            nextTableView.accToDisplay = (sender as! AccTableViewCell?)?.descLabel.text
            nextTableView.accImage = (sender as! AccTableViewCell?)?.accImageView.image
            nextTableView.accPrice = (sender as! AccTableViewCell?)?.priceLabel.text
            
        }
    }
}