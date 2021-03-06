//SI. UIKit used for to call UIViewController, UIImage, UIImageView - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit

var currentSelection = [Int]()

//Moved initialisation from orginial table view controllers to allow current selections access to [Pc]() and [Monitors]()
var pcs = [Pc]()//SI. Initialises pcs with an empty array of objects from the Monitors() to store PC details.
var monitors = [Monitors]()//SI. Initialises monitors with an empty array of objects from Montior() class.

//SI. manages the Summary content.
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
        
    } //SI. viewDidLoad()

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
}
