//
//  LockTableViewCell.swift
//  HertzKiosk
//
//  Created by Bali on 24/02/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

protocol LockTableViewCellDelegate: class {
  func didTapOnLockSwitch(_ lockSwitchIsOn: Bool)
}

class LockTableViewCell: UITableViewCell {
  
  @IBOutlet weak var lockSwitch: UISwitch!
  
  weak var delegate: LockTableViewCellDelegate?
  
  @IBAction func lockSwitchTapped(_ sender: UISwitch) {
    delegate?.didTapOnLockSwitch(sender.isOn)
  }
}
