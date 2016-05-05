//
//  Monitors.swift
//  mobile application test
//
//  Created by Sam Isaacs on 02/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

//SI. UIKit framework needed to use UIImage.
import UIKit

class Monitors {
    
    //SI. MARK: monitor properties
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
