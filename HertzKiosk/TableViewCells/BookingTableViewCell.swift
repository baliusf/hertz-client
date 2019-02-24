//
//  BookingTableViewCell.swift
//  HertzKiosk
//
//  Created by Bali on 23/02/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

class BookingTableViewCell: UITableViewCell {
  
  @IBOutlet weak var pickupLocHeaderLabel: UILabel!
  @IBOutlet weak var pickupLocValueLabel: UILabel!
  @IBOutlet weak var pickupTimeHeaderLabel: UILabel!
  @IBOutlet weak var pickupTimeValueLabel: UILabel!

  func configureCellWithBooking(_ booking: Booking) {
    pickupLocHeaderLabel.text = "Pick up location"
    pickupLocValueLabel.text = "Tampa"
    
    pickupTimeHeaderLabel.text = "Pick up time"
    pickupTimeValueLabel.text = "booking.startDate"
  }
    
}
