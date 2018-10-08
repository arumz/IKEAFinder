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
    @IBOutlet weak var lblStoreNumber: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblZipCode: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblTelephone: UILabel!
    @IBOutlet weak var lblSize: UILabel!
    @IBOutlet weak var lblNumberOfRooms: UILabel!
    @IBOutlet weak var lblNumberOfHomes: UILabel!
    @IBOutlet weak var lblWebpage: UILabel!
    
    
    
    //absolutely has be an IKEA object, cannot be nil
    var selectedIKEA: IKEA!
    
    override func viewWillAppear(_ animated: Bool) {
        print(selectedIKEA.storeName)
        print(selectedIKEA.storeNumber)
        lblStoreName.text = selectedIKEA.storeName
        //convert store number to string
        let stringStoreNumber = String(selectedIKEA.storeNumber)
        lblStoreNumber.text = stringStoreNumber
        lblAddress.text = selectedIKEA.address
        lblZipCode.text = selectedIKEA.zipCode
        lblCountry.text = selectedIKEA.country
        lblTelephone.text = selectedIKEA.telephone
        //convert size to string
        let stringSize = String(selectedIKEA.size)
        lblSize.text = stringSize
        //convert number of rooms to string
        let stringNumberRooms = String(selectedIKEA.roomSettings)
        lblNumberOfRooms.text = stringNumberRooms
        //convert number of homes to string
        let stringNumberHomes = String(selectedIKEA.realLifeHomes)
        lblNumberOfHomes.text = stringNumberHomes
        lblWebpage.text = selectedIKEA.webpage
        
       
        
//        storeImage: String,
//        address: String,
//        city: String,
//        zipCode: String,
//        country: String,
//        telephone: String,
//        size: Int,
//        roomSettings: Int,
//        realLifeHomes: Int,
//        cashLanes: Int,
//        restaurantSeating: Int,
//        smaland: Bool,
//        webpage: String,
//        latitude: Double,
//        longitude: Double
    }
    
}
