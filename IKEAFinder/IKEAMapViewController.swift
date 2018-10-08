//
//  IKEAMapViewController.swift
//  IKEAFinder
//
//  Created by Andrew Roembke on 10/8/18.
//  Copyright © 2018 Andrew Roembke. All rights reserved.
//

import UIKit
import MapKit

class IKEAMapViewController: UIViewController {
    var selectedIKEA: IKEA!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedIKEA.storeName)
        self.title = selectedIKEA.storeName
    }

}
