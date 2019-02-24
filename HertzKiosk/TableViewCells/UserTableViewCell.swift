//
//  UserTableViewCell.swift
//  HertzKiosk
//
//  Created by Bali on 23/02/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit
import SDWebImage

class UserTableViewCell: UITableViewCell {
  
  @IBOutlet weak var userImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var bookingLabel: UILabel!

  func configureCellWithUser(_ user: User, booking: Booking) {
    userImageView.image = UIImage(named: "user")
//    if let url = URL(string: user.image) {
//      userImageView.sd_setImage(with: url, completed: nil)
//    }
    
    nameLabel.text = user.name
    bookingLabel.text = "#\(booking.id)"
  }
}
