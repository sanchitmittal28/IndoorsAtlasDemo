//
//  ViewController.swift
//  IndoorsAtlasDemo
//
//  Created by Sanchit Mittal on 02/07/18.
//  Copyright © 2018 Sanchit Mittal. All rights reserved.
//

import UIKit
import IndoorAtlas

class ViewController: UIViewController, IALocationManagerDelegate {
    
    var locationManager: IALocationManager = IALocationManager.sharedInstance()

    let kAPIKey = "660e9157-3c4c-41dd-872d-68c9729ba3bd"
    let kAPISecret = "yuy/dWyMTboHe4QUEMXEEKIh+KIXEzj5ArBOT7VlQPtSrAwq9EHCUVVy+VpKtsSPYakf9Llt+a/55oGqBbxc92j4RORGH9ewWqvv/SfAKWCl3i5fw32sWaBP0l24XQ=="

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.setApiKey(kAPIKey, andSecret: kAPISecret)
        
        locationManager.startUpdatingLocation()

    }

    func indoorLocationManager(_ manager: IALocationManager, didUpdateLocations locations: [Any]) {
        
        let l = locations.last as! IALocation
        
        if let newLocation = l.location?.coordinate {
            print("Position changed to coordinate: \(newLocation.latitude) \(newLocation.longitude)")
        }
    }
}

