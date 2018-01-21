//
//  CarModel.swift
//  MVVMTest
//
//  Created by Skander Jabouzi on 2018-01-21.
//  Copyright © 2018 Skander Jabouzi. All rights reserved.
//

import Foundation

class CarModel {
    var cars = [CarViewModel]()
    
    init() {
        let ferrariF12 = Car(model: "F12", make: "Ferrari", kilowatts: 730, photoURL: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        let zondaF = Car(model: "Zonda F", make: "Pagani", kilowatts: 602, photoURL: "http://storage.pagani.com/view/1024/BIG_zg-4-def.jpg")
        let lamboAventador = Car(model: "Aventador", make: "Lamborghini", kilowatts: 700, photoURL: "http://cdn.lamborghini.com/content/models/aventador_lp700-4_roadster/gallery_2013/roadster_21.jpg")
        cars = [CarViewModel(car: ferrariF12), CarViewModel(car: zondaF), CarViewModel(car: lamboAventador)]
    }
}
