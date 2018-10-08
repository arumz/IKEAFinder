//
//  IKEAMapViewController.swift
//  IKEAFinder
//
//  Created by Andrew Roembke on 10/8/18.
//  Copyright © 2018 Andrew Roembke. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

//UIViewController is a class, CLLocationManagerDelegate is a protocol
//class Person create Peter Parker object. Peter Parker references Spidey protocol to have spidey powers
class IKEAMapViewController: UIViewController, CLLocationManagerDelegate {
    var selectedIKEA: IKEA!
    //object of class CLLocationManager
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedIKEA.storeName)
        self.title = selectedIKEA.storeName
    }

    override func viewDidAppear(_ animated: Bool) {
        // create an object of cclllocattionmanager
        
        //Core Location Manager Initializer
        locationManager = CLLocationManager()
        //assigning object to delegate
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        
        // Permissions
        locationManager.requestWhenInUseAuthorization()
        
        // Update Location
        locationManager.startUpdatingLocation()
    }
}
