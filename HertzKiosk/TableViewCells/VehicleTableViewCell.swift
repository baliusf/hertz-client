//
//  VehicleTableViewCell.swift
//  HertzKiosk
//
//  Created by Bali on 23/02/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {

  @IBOutlet weak var vehicleImageView: UIImageView!
  @IBOutlet weak var yearLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  
  func configureCellWithVehicle(_ vehicle: Vehicle) {
    vehicleImageView.image = UIImage(named: vehicle.image)
    yearLabel.text = vehicle.year
    nameLabel.text = vehicle.model
  }
}
