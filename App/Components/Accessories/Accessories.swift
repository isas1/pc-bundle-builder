//SI. UIKit framework needed to use UIImage - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit


//SI. creates, sets and intialises Accessory data.
class Accessories {
    
    //SI. MARK: accessory properties.
    //SI. variables because they will change for each cell.
    var image: UIImage?
    var desc: String
    var sku: Int
    var price: String
    
    //SI. set the initial value of each variable.
    init?(image: UIImage?, desc: String, sku: Int, price: String) {
        
        self.image = image
        self.desc = desc
        self.sku = sku
        self.price = price
        
        //SI. allows application to run if values aren't available - returns nil if any of the strings are empty or ints < 0.
        if desc.isEmpty || sku < 0 || price.isEmpty {
            return nil
        }
    }
}
