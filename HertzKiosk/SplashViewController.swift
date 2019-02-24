//
//  SplashViewController.swift
//  HertzKiosk
//
//  Created by Haley Ovenhouse on 2/8/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    //segue to the login view after 1.5 seconds
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
      let nav = UINavigationController(rootViewController: homeVC)
      self.present(nav, animated: true, completion: nil)
    }
    
  }
  
  
}
