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
    //latitude and longitude is a part of Core Location
    
    var locationManager: CLLocationManager!
    
    //weak connection may or may not be giving instructions
    @IBOutlet weak var mapWorldMap: MKMapView!
    
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
    
    //CLLocation Manager DELEGATE FUNCTION
    //didUpdateLocations has to contact at least 3 satellites before it is called
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //Once we figure out where the user is... update to show the location
        
        centerMapOnLocation(locationCoord: selectedIKEA.coordinate, distance: 5000)
        mapWorldMap.addAnnotation(selectedIKEA)
        
        //calculate the center point
        
        let centerPoint = calculateCenterPoint(location1: locations.last!.coordinate, location2: locations.last!.coordinate)
        
        //calculate region size
        
        let regionSize = calculateRegionSize(location1: locations.last!.coordinate, location2: selectedIKEA.coordinate)
    }
    
    // INTERNAL FUNCTIONS
    
    //THIS FUNCTION MOVES AND CENTERS THE MAP
    
    func centerMapOnLocation(locationCoord: CLLocationCoordinate2D, distance: Double) {
        let mappedRegion = MKCoordinateRegionMakeWithDistance(locationCoord, distance, distance)

        mapWorldMap.setRegion(mappedRegion, animated: true)
    }
    
    
}
