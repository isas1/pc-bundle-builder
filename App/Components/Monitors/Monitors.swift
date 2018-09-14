//SI. UIKit framework needed to use UIImage - https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/
import UIKit

//SI. creates, sets and intialises Monitor data.
class Monitors {
    
    //SI. variables because they will change for each cell.
    var image: UIImage?
    var name: String
    var screensize: String
    var resolution: String
    var details: String
    var sku: Int
    var price: Double
    
    //SI. set the initial value of each variable
    init?(image: UIImage?, name: String, screensize: String, resolution: String, details: String, sku: Int, price: Double) {
        self.image = image
        self.name = name
        self.screensize = screensize
        self.resolution = resolution
        self.details = details
        self.sku = sku
        self.price = price
        
        //SI. allows application to run if values aren't available - returns nil if any of the strings are empty or ints < 0.
        if name.isEmpty || screensize.isEmpty || resolution.isEmpty || details.isEmpty || sku < 0 || price < 0 {
            return nil
        }
    }
}
