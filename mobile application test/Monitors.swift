//
//  Monitors.swift
//  mobile application test
//
//  Created by Sam Isaacs on 02/03/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

import UIKit


class Monitors {
    
    //SI. MARK: monitor properties
    //SI. variables because they will change for each cell.
    var image: UIImage?
    var name: String
    var screenSize: String
    var resolution: String
    var details: String
    var sku: Int
    var price: Double
    
    //SI. set the initial value of each variable
    init?(image: UIImage?, name: String, screenSize: String, resolution: String, details: String, sku: Int, price: Double) {
        self.image = image
        self.name = name
        self.screenSize = screenSize
        self.resolution = resolution
        self.details = details
        self.sku = 4643466
        self.price = 0
        
        //SI. for validation an if statement has been
        if name.isEmpty || screenSize.isEmpty || resolution.isEmpty || details.isEmpty || sku < 0 || price < 0 {
            return nil
        }
    }
}
