//
//  User.swift
//  HertzKiosk
//
//  Created by Bali on 23/02/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import Foundation

enum UserType: String {
  case gold = "gold"
  case fiveStar = "five star"
  case presidentialCircle = "presidential circle"
  case guest = "guest"
}

class User {
  
  var id = -1
  var name = "Kartikay Bali"
  var email = ""
  var contact = ""
  var image = ""
  var type = UserType.guest.rawValue
  
  init() {
  }
  
}
