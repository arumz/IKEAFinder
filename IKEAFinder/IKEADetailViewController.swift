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
        
        // connect all labels to selectedIKEA attributes
        
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
        
    }
        //segue will engage
        //override
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //get a reference to our segue target
           
                //if segue.identifier == "IKEAMapSegue" {
                let mapView  = segue.destination as! IKEAMapViewController
                
                //move (a copy of) the instance of the selected ikea class
                //from this view controller to the next view controller
                mapView.selectedIKEA = selectedIKEA
             //}
            
        
            
            
        }
}

    

