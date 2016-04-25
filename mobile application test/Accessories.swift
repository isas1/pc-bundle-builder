//
//  Accessories.swift
//  mobile application test
//
//  Created by Sam Isaacs on 29/02/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

//SI. UIKit framework needed to use UIImage.
import UIKit

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
        
        //SI. for validation to return nil if any of the strings are empty or ints < 0.
        if desc.isEmpty || sku < 0 || price.isEmpty {
            return nil
        }
    }
}
