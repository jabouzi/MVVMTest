//
//  Cars.swift
//  MVVMTest
//
//  Created by Skander Jabouzi on 2018-01-21.
//  Copyright © 2018 Skander Jabouzi. All rights reserved.
//

import Foundation

class Car {
    var model: String
    var make: String
    var kilowatts: Int
    var photoURL: String
    
    init(model: String, make: String, kilowatts: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }
}
