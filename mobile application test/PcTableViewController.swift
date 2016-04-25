//
//  PcTableViewController.swift
//  mobile application test
//
//  Created by Sam Isaacs on 01/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

//SI. UIKit framework used to make UITableViewController see development section of documentation for all uses within UIKit.
import UIKit

//SI. PcTableViewController class uses UITableViewController which manages a table view by creating a controller object.
class PcTableViewController: UITableViewController {
    
    var pcForNextTableView: String!
    var pcPriceForNextTableView: String!
    var pcImageForNextTableView: UIImage!
    var pcToDisplay: String!
    var pcImage: UIImage!

    //SI. clears array - added to prevent duplicate cell being loaded upon app reset.
    func clearPCs() {
        pcs = []
    }
    
    //SI. Creates data in a function "loadTestPcs".
    func loadTestPcs()
    {
        let pic1 = UIImage(named: "PC1")
        let pc1 = Pc(image: pic1, name: "GC1", graphics: "Radeon R7", cpu: "A6", hdd: 1, ssd:  0, ram:  8, sku: 464346, price: "499.99")
        
        let pic2 = UIImage(named: "PC2")
        let pc2 = Pc(image: pic2, name: "GC2", graphics: "GTX 950", cpu: "X4 860K", hdd: 1, ssd:  0, ram:  8, sku: 464365, price: "549.99")
        
        let pic3 = UIImage(named: "PC3")
        let pc3 = Pc(image: pic3, name: "GC3", graphics: "GTX 960 4GB", cpu: "X4 860K", hdd: 1, ssd:  0, ram:  8, sku: 464366, price: "599.99")
        
        let pic4 = UIImage(named: "PC4")
        let pc4 = Pc(image: pic4, name: "GC4", graphics: "GTX 960 4GB", cpu: "i3 6100", hdd: 2, ssd:  0, ram:  8, sku: 464565, price: "699.99")
        
        let pic5 = UIImage(named: "PC5")
        let pc5 = Pc(image: pic5, name: "GC5", graphics: "GTX 960 4GB", cpu: "i5 6500", hdd: 2, ssd:  0, ram:  8, sku: 464583, price: "799.99")
        
        let pic6 = UIImage(named: "PC6")
        let pc6 = Pc(image: pic6, name: "GC6", graphics: "GTX 960 4GB", cpu: "i5 6600", hdd: 2, ssd:  0, ram:  16, sku: 464624, price: "849.99")
        
        let pic7 = UIImage(named: "PC7")
        let pc7 = Pc(image: pic7, name: "GC7", graphics: "GTX 970 4GB", cpu: "i5 6600", hdd: 2, ssd:  0, ram:  8, sku: 464625, price: "899.99")
        
        let pic8 = UIImage(named: "PC8")
        let pc8 = Pc(image: pic8, name: "GC8", graphics: "GTX 970 4GB", cpu: "i5 6500", hdd: 2, ssd:  120, ram:  16, sku: 464646, price: "999.99")
        
        let pic9 = UIImage(named: "PC9")
        let pc9 = Pc(image: pic9, name: "GC9", graphics: "GTX 970 4GB", cpu: "i5 6600K", hdd: 2, ssd:  120, ram:  16, sku: 464710, price: "1149.99")
        
        let pic10 = UIImage(named: "PC10")
        let pc10 = Pc(image: pic10, name: "G10", graphics: "GTX 970 4GB", cpu: "i5 6600K", hdd: 2, ssd:  120, ram:  16, sku: 464738, price: "1199.99")
        
        let pic11 = UIImage(named: "PC11")
        let pc11 = Pc(image: pic11, name: "G11", graphics: "GTX 970 4GB", cpu: "i7 6700K", hdd: 2, ssd:  120, ram:  16, sku: 464744, price: "1299.99")
        
        let pic12 = UIImage(named: "PC12")
        let pc12 = Pc(image: pic12, name: "G12", graphics: "GTX 980 4GB", cpu: "i5 6600K", hdd: 2, ssd:  250, ram:  16, sku: 464763, price: "1399.99")
        
        let pic13 = UIImage(named: "PC13")
        let pc13 = Pc(image: pic13, name: "G13", graphics: "GTX 980 4GB", cpu: "i7 6600K", hdd: 2, ssd:  250, ram:  16, sku: 464766, price: "1499.99")
        
        let pic14 = UIImage(named: "PC14")
        let pc14 = Pc(image: pic14, name: "G14", graphics: "GTX 980Ti 4GB", cpu: "i5 6700K", hdd: 2, ssd:  500, ram:  16, sku: 464798, price: "1599.99")
        
        let pic15 = UIImage(named: "PC15")
        let pc15 = Pc(image: pic14, name: "G15", graphics: "GTX 980Ti 4GB", cpu: "i7 6700K", hdd: 2, ssd:  500, ram:  16, sku: 464799, price: "1699.99")
        
        
        //SI. adds details stored in pc1,2 and 3 to pcs array.
        //
        pcs += [pc1!, pc2!, pc3!, pc4!, pc5!, pc6!, pc7!, pc8!, pc9!, pc10!, pc11!, pc12!, pc13!, pc14!, pc15!]

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SI. created function to clear table cell upon load for circumvent problem where data is loaded on top of previous data when reset button is used.
        clearPCs()
        //SI. run loadTestPcs function when view loads which create PC information.
        loadTestPcs()
        
                // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //SI. function included in UITableViewController class. 1 section desired.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //SI. creates a row for each object in pcs array.
        return pcs.count
    }

    //SI. enabled protocol used for cell management. Best practice for when cells they are out of view, the data is dropped and cell can be reused.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //SI. created a constant for pcTableViewCell which was set earlier as the reuse identifier for the prototype cell in the table view controller.
        //SI. type of cell needs to be downcast to custom cell subclass (pcTableViewCell).
        let cellIdentifier = "pcTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! pcTableViewCell
        
        //SI. retrieves current pc data for data source layout.
        let pc = pcs[indexPath.row]
        
        //SI. text used for Strings, tag used for Ints. ssd is an optional variable so again required "!" to force unwrap.
        cell.nameLabel.text = pc.name
        cell.picImageView.image = pc.image
        cell.graphicsLabel.text = pc.graphics
        cell.cpuLabel.text = pc.cpu
        cell.hddLabel.text = String(pc.hdd)+"TB"
        //cell.ssdLabel.text = String(pc.ssd)
        cell.ramLabel.text = String(pc.ram) + "GB"
        cell.priceLabel.text = pc.price
    //SI. add price as double in here - could not find.
        return cell
    }

/* REDUNDANT CODE
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //segue.destinationViewController
        print("prepareForSegue")
        monitorTableViewController()
        
    }
    
    
//SI. Apple (2016) state that override is used to create a custom instances of an existing function. Function added here to load the seague (transistion) between pctableview controller and monitortableview controller when a cell in tableview (in this case pcTableView) is selected.
    
    
    /* SI. Manual method to override didSelectRowAtIndexPath. Not ideal.
    http://stackoverflow.com/questions/35951088/swift-reloading-data-in-table-view-controllers/35956256?noredirect=1#comment59569255_35956256
 
    
//func myArrayFunc(inputArray:Array<Any>) -> Array<Any> {}
    
    //SI. Working method for passing data through view controllers!!! :))))
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cellIdentifier = "pcTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! pcTableViewCell
        let currentPC = pcs[indexPath.row].name
        let currentPcImage = pcs[indexPath.row].image
        let currentPcPrice = pcs[indexPath.row].price
        let pc = pcs[indexPath.row]
        
        cell.picImageView.image = pc.image
        cell.nameLabel.text = pc.name
        cell.priceLabel.text = pc.price
        
        self.pcForNextTableView = currentPC
        self.pcImageForNextTableView = currentPcImage
        self.pcPriceForNextTableView = currentPcPrice
        performSegueWithIdentifier("monSegue", sender: nil)

        
        /*SI. TESTING - Attempting to retrieve table cell index by adding index of each cell selected to an array which would be used to pull data for the summary page.
         print("You selected cell #\(indexPath.row)!")
         // Get Cell Label
         let indexPath = tableView.indexPathForSelectedRow
         let pcSelectedCell = indexPath!.row
         currentSelection += [pcSelectedCell]
         */
        //print(pc1!)
        //[tableViewValues removeAllObjects];
        //SI. after creating a seague on the main storyboard.
        //self.performSegueWithIdentifier("ShowMonitorsSeague" , sender: indexPath)
        
    }
 
 */
 */
    
    override public func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //print((sender as! pcTableViewCell?)?.nameLabel.text)
        if (segue.identifier == "monSegue") {
            
            let nav = segue.destinationViewController as! UINavigationController
            let nextTableView = nav.topViewController as! monitorTableViewController
            //let nextTableView = segue.destinationViewController as! monitorTableViewController
            //nextTableView.pcToDisplay = pcToDisplay
            //print((sender as! pcTableViewCell?)?.nameLabel.text)
            nextTableView.pcToDisplay = (sender as! pcTableViewCell?)?.nameLabel.text
            nextTableView.pcImage = (sender as! pcTableViewCell?)?.picImageView.image
            nextTableView.pcPrice = (sender as! pcTableViewCell?)?.priceLabel.text
        }
    }
    
    /* REDUNDANT CODE
        //print(pcToDisplay)
        //print (pcForNextTableView)

    
    //SI. REF. DeepVinicius (2014) Swift - Segue on Dynamic TableCell. [Online] Available from: http://stackoverflow.com/questions/26303616/swift-segue-on-dynamic-tablecell [Accessed: 2 March 2016].

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    let SeagueMonitorID = "ShowMonitorSeague"
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == SeagueMonitorID {
            //if let destination = segue.destinationViewController as? MonitorTableViewController {
                //if let blogIndex = tableView.indexPathForSelectedRow()?.row {
                    //destination.blogName = swiftBlogs[blogIndex]
                }
            }

        */
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
 
     */
}
    

