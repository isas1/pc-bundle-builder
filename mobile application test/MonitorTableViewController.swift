//
//  PcTableViewController.swift
//  mobile application test
//
//  Created by Sam Isaacs on 01/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

import UIKit

class monitorTableViewController: UITableViewController {
    
    //SI. Initialises monitors with an empty array of objects to store PC details.
    var monitors = [Monitors]()
    
    //SI. Creates data in a function "loadTestMonitors".
    func loadTestMonitors()
    {
        let pic1 = UIImage(named: "MON1")
        let mon1 = Monitors(image: pic1, name: "Acer Pedator", screenSize: "24", resolution: "A6", details: "IPS ZeroFrame Gaming Widescreen Monitor", sku: 4643466, price: 499.99)
        
        let pic2 = UIImage(named: "MON2")
        let mon2 = Monitors(image: pic2, name: "PC2", screenSize: "Radeon R7", resolution: "A6", details: "TN G-Sync 144Hz Gaming Widescreen LED Monitor", sku: 4643466, price: 549.99)
        
        let pic3 = UIImage(named: "MON3")
        let mon3 = Monitors(image: pic3, name: "PC3", screenSize: "Radeon R7", resolution: "A6", details: "IPS SuperWidescreen LED Monitor", sku: 4643466, price: 599.99)
        
        //SI. adds details stored in pc1,2 and 3 to monitors array.
        //
        monitors += [mon1!, mon2!, mon3!]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SI. run loadTestmonitors function when view loads which create PC information.
        loadTestMonitors()
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
        //SI. creates a row for each object in monitors array.
        return monitors.count
    }
    
    //SI. enabled protocol used for cell management. Best practice for when cells they are out of view, the data is dropped and cell can be reused.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //SI. created a constant for pcTableViewCell which was set earlier as the reuse identifier for the prototype cell in the table view controller.
        //SI. type of cell needs to be downcast to custom cell subclass (pcTableViewCell).
        let cellIdentifier = "monitorTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! monitorTableViewCell
        
        //SI. retrieves current pc data for data source layout.
        let monitor = monitors[indexPath.row]
        
        //SI. text used for Strings, tag used for Ints. ssd is an optional variable so again required "!" to force unwrap.
        cell.nameLabel.text = monitor.name
        cell.monImageView.image = monitor.image
        cell.screenSizeLabel.text = monitor.screenSize
        cell.resolutionLabel.text = monitor.resolution
        cell.detailsLabel.text = String(monitor.details)+"TB"
        //cell.ssdLabel.text = String(pc.ssd)
        cell.priceLabel.text = "£"+String(monitor.price)
        //SI. add price as double in here - could not find.
        
        return cell
    }
    
    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("ShowMonitorsSeague" , sender: indexPath)
    }
    
    //DeepVinicius (2014) Swift - Segue on Dynamic TableCell. [Online] Available from: http://stackoverflow.com/questions/26303616/swift-segue-on-dynamic-tablecell [Accessed: 2 March 2016].
    */
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
}


