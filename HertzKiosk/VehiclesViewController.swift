//
//  VehiclesViewController.swift
//  HertzKiosk
//
//  Created by Haley Ovenhouse on 2/20/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

class VehiclesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var vehiclesTableView: UITableView!
    
    
    let camaro = Vehicle(year: "2019", make: "Chevrolet", model: "Camaro", image: "Camaro")
    let xts = Vehicle(year: "2019", make: "Cadillac", model: "XTS", image: "XTS")
    let impala = Vehicle(year: "2019", make: "Chevrolet", model: "Impala", image: "Impala")
    let canyon = Vehicle(year: "2019", make: "GMC", model: "Canyon", image: "Canyon")
    let encore = Vehicle(year: "2019", make: "Buick", model: "Encore", image: "Encore")
    var vehiclesArray : Array<Vehicle> = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        vehiclesTableView.delegate = self
        vehiclesTableView.dataSource = self
        
        vehiclesArray = [encore, camaro, canyon, xts, impala]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vehiclesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vehicle = vehiclesArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleCell") as! VehicleTableViewCell
        
//        cell.vehicleImage.image = UIImage(named: vehicle.image)
//        cell.vehicleYearMakeModelLabel.text = "\(vehicle.year) \(vehicle.make) \(vehicle.model)"
      
        return cell
     
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
