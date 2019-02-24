//
//  Vehicle.swift
//  HertzKiosk
//
//  Created by Haley Ovenhouse on 2/20/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import Foundation

class Vehicle {
  var year = "2019"
  var make = "Chevrolet"
  var model = "Camaro"
  var image = "Camaro"
  
  init() {
  }
  
  convenience init(year: String, make: String, model: String, image: String) {
    self.init()
    self.year = year
    self.make = make
    self.model = model
    self.image = image
  }
}
