//
//  CurrentSelectionViewController.swift
//  mobile application test
//
//  Created by Sam Isaacs on 25/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

//SI. UIKit used for to call UIViewController, UIImage, UIImageView
import UIKit

var currentSelection = [Int]()


//Moved initialisation from orginial table view controllers to allow current selections
//SI. Initialises pcs with an empty array of objects from the Monitors() to store PC details.
var pcs = [Pc]()

//SI. Initialises monitors with an empty array of objects from Montior() class.
var monitors = [Monitors]()


class CurrentSelectionViewController: UIViewController {
    
    //SI. declaration of variables recieved from pcTableViewController.
    var pcToDisplay: String! = nil
    var pcImage: UIImage! = nil
    var pcPrice: String! = nil
    
    //SI. declaration of variables recieved from monTableViewController.
    var monToDisplay: String! = nil
    var monImage: UIImage! = nil
    var monPrice: String! = nil
    
    //SI. declaration of variables recieved from accTableViewController.
    var accToDisplay: String! = nil
    var accImage: UIImage! = nil
    var accPrice: String! = nil
    
    //SI. Connections between data model and view.
    @IBOutlet weak var pcImageView: UIImageView!
    @IBOutlet weak var pcNameOutlet: UILabel!
    @IBOutlet weak var pcPriceOutlet: UILabel!

    @IBOutlet weak var monImageView: UIImageView!
    @IBOutlet weak var monNameOutlet: UILabel!
    @IBOutlet weak var monPriceOutlet: UILabel!
    
    @IBOutlet weak var accImageView: UIImageView!
    @IBOutlet weak var accNameOutlet: UILabel!
    @IBOutlet weak var accPriceOutlet: UILabel!
    
    @IBOutlet weak var totalPriceOutlet: UILabel!
    
    //SI. when view loads pass the data retieved for previous views to variable for IBOublets.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pcNameOutlet.text = pcToDisplay
        pcImageView.image = pcImage
        pcPriceOutlet.text = "£"+pcPrice
        
        monNameOutlet.text = monToDisplay
        monImageView.image = monImage
        monPriceOutlet.text = "£"+monPrice
        
        accNameOutlet.text = accToDisplay
        accImageView.image = accImage
        accPriceOutlet.text = "£"+accPrice
        
/*
 *      SI. CALCULATIONS
*/
        //SI. convert values to Doubles and store in constants.
        let pcInt:Double? = Double(pcPrice)
        let monInt:Double? = Double(monPrice)
        let accInt:Double? = Double(accPrice)
        
        //SI. add prices together.
        let totalPrice = pcInt! + monInt! + accInt!
        
        //SI. pass total to totalPriceOutlet variable.
        totalPriceOutlet.text = "£"+String(totalPrice)
        
        /* FAILED ATTEMPT TO RETRIEVE IMAGE
        if let image = UIImage(data:pcImage) {
            dispatch_async(dispatch_get_main_queue()) {
                self.pcImage.image = image
            }
        }
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
