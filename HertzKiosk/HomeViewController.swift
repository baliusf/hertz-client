//
//  HomeViewController.swift
//  HertzKiosk
//
//  Created by Bali on 23/02/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

enum HomeSections {
  case user
  case vehicle
  case booking
  case lock
}

class HomeViewController: UIViewController {
  
  var sections = [HomeSections]()
  var booking = Booking()
  
  var isLocked = true
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupTableView()
    setupSections()
    
    navigationItem.title = "Booking info"
  }
  
  private func setupSections() {
    sections = [HomeSections.user, HomeSections.vehicle, HomeSections.booking, HomeSections.lock]
    tableView.reloadData()
  }
  
  private func setupTableView() {
    let userNib = UINib(nibName: "UserTableViewCell", bundle: nil)
    tableView.register(userNib, forCellReuseIdentifier: "UserTableViewCell")
    
    let vehicleNib = UINib(nibName: "VehicleTableViewCell", bundle: nil)
    tableView.register(vehicleNib, forCellReuseIdentifier: "VehicleTableViewCell")
    
    let bookingNib = UINib(nibName: "BookingTableViewCell", bundle: nil)
    tableView.register(bookingNib, forCellReuseIdentifier: "BookingTableViewCell")
  }
  
  @objc private func switchTapped(_ lockSwitch: UISwitch) {
    if isLocked {
//      let alert = UIAlertController(title: "Warning", message: "You are about to unlock your vehicle. Do you wish to continue?", preferredStyle: .alert)
//      alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//      alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) in
        self.isLocked = false
        self.performActionLockOrUnlockVehicle()
//      }))
//      present(alert, animated: true, completion: nil)
    } else {
      self.isLocked = true
      performActionLockOrUnlockVehicle()
    }
  }
  
  private func performActionLockOrUnlockVehicle() {
    
  }
}

extension HomeViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return sections.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch sections[indexPath.section] {
    case .user:
      let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell") as! UserTableViewCell
      cell.configureCellWithUser(booking.user)
      return cell
      
    case .vehicle:
      let cell = tableView.dequeueReusableCell(withIdentifier: "VehicleTableViewCell") as! VehicleTableViewCell
      cell.configureCellWithVehicle(booking.vehicle)
      return cell
      
    case .booking:
      let cell = tableView.dequeueReusableCell(withIdentifier: "BookingTableViewCell") as! BookingTableViewCell
      cell.configureCellWithBooking(booking)
      return cell
      
    default:
      let lockCellIdentifier = "lockCellIdentifier"
      var cell = tableView.dequeueReusableCell(withIdentifier: lockCellIdentifier)
      if cell == nil {
        cell = UITableViewCell(style: .default, reuseIdentifier: lockCellIdentifier)
      }
      
      cell?.textLabel?.text = "Lock vehicle"
      
      let lockSwitch = UISwitch(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
      lockSwitch.isOn = isLocked
      lockSwitch.removeTarget(self, action: #selector(switchTapped(_ :)), for: .valueChanged)
      lockSwitch.addTarget(self, action: #selector(switchTapped(_ :)), for: .valueChanged)
      cell?.accessoryView = lockSwitch
      
      return cell!
    }
  }
}

extension HomeViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    switch sections[indexPath.section] {
    case .user:
      return 85
      
    case .vehicle:
      return 200
      
    case .booking:
      return 100
      
    default:
      return 44
    }
  }
}
