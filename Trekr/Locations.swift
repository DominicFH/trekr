//
//  Locations.swift
//  Trekr
//
//  Created by Dominic Harris on 19/06/2022.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location] // initialize places as an an array which will contain only Location structs
    
    var primary: Location {
        places[0]
    }
    
    init() {
        // ! at end tells Swift that we know this will work and if it doesn't, crash the whole app (NOT BEST PRACTICE)

        // Create constant value 'url' which will point to locations.json
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        // try loading this data found with this url and store it in this 'data' value
        let data = try! Data(contentsOf: url)
            
        // JSONDecoder converts JSON to Swift types
        // Take info from the data value and decoce into an array of Location objects
        // .self - referring to an array of Locations in general, not this specific array
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
