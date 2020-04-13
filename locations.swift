//
//  locations.swift
//  ece564-2-DukeAdmissionRoute
//
//  Created by 裴紫琦 on 11/2/19.
//  Copyright © 2019 Duke University. All rights reserved.
//

import Foundation


// all the locations
struct Location:  Codable{
    var name: String
    var description: String
    var picture: String
}

// a list of locations in a route
struct Route{
    var name = ""
    var contents: [String] = []
}

// a dictionary of all the routes
var routes = [String: Route]()

// a list of all locations (used to parse json)
var locationList: [Location] = []

// a dictionary of all the locations
var locationDictionary = [String: Location]()

// initialize the storage of all the information
func initializeDict(){
    // 1. parse json to get location list
    do{
        let jsonData = locationJson.data(using:.utf8)!
        let decoder = JSONDecoder()
        locationList = try decoder.decode([Location].self, from: jsonData)
        print("Got the data with total of \(locationList.count) buildings")
    }
    catch let parsingError{
        print("Error", parsingError)
    }

    // 2. add list to dictionary
    locationDictionary.removeAll()
    for element in locationList{
        locationDictionary.updateValue(element, forKey: element.name)
    }
    print(locationDictionary)
        
    
}

