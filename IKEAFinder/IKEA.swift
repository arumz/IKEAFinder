//
//  IKEA.swift
//  IKEAFinder
//
//  Created by Andrew Roembke on 9/24/18.
//  Copyright © 2018 Andrew Roembke. All rights reserved.
//

import Foundation
import MapKit

//: Playground - noun: a place where people can play (imported from playground)


var str = "Hello, playground"

//MK annotation is another protocol
class IKEA: NSObject, MKAnnotation {
    //intersection of latitude and longitude
    //{} means computed property
    //when we request the coordinate property of IKEA it is calculated
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(latitude, longitude)
    }
    
    var storeName: String
    var storeNumber: Int
    var storeImage: String
    var address: String
    var city: String
    var zipCode: String
    var country: String
    var telephone: String
    var size: Int
    var roomSettings: Int
    var realLifeHomes: Int
    var cashLanes: Int
    var restaurantSeating: Int
    var smaland: Bool
    var webpage: String
    var latitude: Double
    var longitude: Double
    
    init(
        storeName: String,
        storeNumber: Int,
        storeImage: String,
        address: String,
        city: String,
        zipCode: String,
        country: String,
        telephone: String,
        size: Int,
        roomSettings: Int,
        realLifeHomes: Int,
        cashLanes: Int,
        restaurantSeating: Int,
        smaland: Bool,
        webpage: String,
        latitude: Double,
        longitude: Double) {
        self.storeName = storeName
        self.storeNumber = storeNumber
        self.storeImage = storeImage
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.country = country
        self.telephone = telephone
        self.size = size
        self.roomSettings = roomSettings
        self.realLifeHomes = realLifeHomes
        self.cashLanes = cashLanes
        self.restaurantSeating = restaurantSeating
        self.smaland = smaland
        self.webpage = webpage
        self.latitude = latitude
        self.longitude = longitude
    }
}


