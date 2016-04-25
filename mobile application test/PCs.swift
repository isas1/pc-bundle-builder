//
//  PCs.swift
//  mobile application test
//
//  Created by Sam Isaacs on 29/02/2016.
//  Copyright © 2016 Sam Isaacs. All rights reserved.
//

import UIKit

class Pc {
    
    //SI. MARK: pc properties.
    //SI. variables because they will change for each cell.
    var image: UIImage?
    var name: String
    var graphics: String
    var cpu: String
    var hdd: Int
    var ssd: Int?
    var ram: Int
    var sku: Int
    var price: String
    
    //SI. set the initial value of each variable.
    init?(image: UIImage?, name: String, graphics: String, cpu: String, hdd: Int, ssd: Int?, ram: Int, sku: Int, price: String) {
        self.image = image
        self.name = name
        self.graphics = graphics
        self.cpu = cpu
        self.hdd = 1
        self.ssd = nil
        self.ram = ram
        self.sku = 12345
        self.price = price
        
        //SI. for validation an if statement has been.
            if name.isEmpty || graphics.isEmpty || cpu.isEmpty || hdd < 0 || ram < 0 || sku < 0 || price.isEmpty {
            return nil
            }
        }
    }
