//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        let fromPlanet = itemsFromPlanet(inventory, planet: planet)
        
        var minAge = Int.min
        var oldest: UDItem?
        
        for item in fromPlanet{
            let ageData = item.historicalData["CarbonAge"]
            if let age = ageData as? Int {
                if age > minAge {
                    minAge = age
                    oldest = item
                }
            }
        }
        return oldest
    }
    
}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"