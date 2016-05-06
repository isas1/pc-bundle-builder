//
//  PCs.swift
//  mobile application test
//
//  Created by Sam Isaacs on 29/02/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

//SI.

//SI. UIKit framework needed to use UIImage.
import UIKit

class Pc {
    
    //SI. creation and type.
    var image: UIImage?
    var name: String
    var graphics: String
    var cpu: String
    var hdd: Int
    var ssd: Int
    var ram: Int
    var sku: Int
    var price: String
    
    //SI. initial values.
    init?(image: UIImage?, name: String, graphics: String, cpu: String, hdd: Int, ssd: Int?, ram: Int, sku: Int, price: String) {
        self.image = image
        self.name = name
        self.graphics = graphics
        self.cpu = cpu
        self.hdd = 1
        self.ssd = 120
        self.ram = ram
        self.sku = 12345
        self.price = price
        
        //SI. allows application to run if values aren't available - returns nil if any of the strings are empty or ints < 0.
        if name.isEmpty || graphics.isEmpty || cpu.isEmpty || hdd < 0 || ram < 0 || sku < 0 || price.isEmpty {
            return nil
        }
    }
}
