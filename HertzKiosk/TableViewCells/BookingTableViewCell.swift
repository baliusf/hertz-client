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
  @IBOutlet weak var pickupTimeHeaderLabel: UILabel!

  func configureCellWithBooking(_ booking: Booking) {
    pickupLocHeaderLabel.text = "Pickup location: Tampa"
    pickupTimeHeaderLabel.text = "Pickup time: \(dateToString(date: booking.startDate))"
  }
  
  private func dateToString(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM dd, yyyy hh:mm Z"
    return dateFormatter.string(from: date)
  }
}
