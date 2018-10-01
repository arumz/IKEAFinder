//
//  IKEADetailViewController.swift
//  IKEAFinder
//
//  Created by Andrew Roembke on 9/24/18.
//  Copyright © 2018 Andrew Roembke. All rights reserved.
//

import UIKit

class IKEADetailViewController: UIViewController {
    
    @IBOutlet weak var lblStoreName: UILabel!
    
    //absolutely has be an IKEA object, cannot be nil
    var selectedIKEA: IKEA!
    
    override func viewWillAppear(_ animated: Bool) {
        print(selectedIKEA.storeName)
        lblStoreName.text = selectedIKEA.storeName
    }
    
}
