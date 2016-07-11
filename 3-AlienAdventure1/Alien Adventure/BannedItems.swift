//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let array = NSArray(contentsOfURL: dataFileURL);
        var items = [Int]()
        for item in array!{
            let name:String = item["Name"] as! String
            let carbonAge:Int = item["HistoricalData"]!!["CarbonAge"] as! Int
            let itemId:Int = item["ItemID"] as! Int
            if (name.containsString("Laser") &&  carbonAge < 30){
                items.append(itemId);
            }
        }
        return items
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"