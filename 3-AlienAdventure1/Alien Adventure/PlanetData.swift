//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        
        
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let data = NSData(contentsOfURL: dataFileURL)
        do {
            let json:NSArray = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as! NSArray
            
            var mostInteresting = ""
            var maxScore = 0
            
            for item in json {
                let name:String = item["Name"] as! String
                let common:Int = item["CommonItemsDetected"] as! Int
                let uncommon:Int = item["UncommonItemsDetected"] as! Int
                let rare:Int = item["RareItemsDetected"] as! Int
                let legendary:Int = item["LegendaryItemsDetected"] as! Int
                
                let score = common + 2 * uncommon + 3 * rare + 4 * legendary;
                
                if (score > maxScore){
                    maxScore = score
                    mostInteresting = name
                }
                
            }
            return mostInteresting
        } catch {
            print("Failed to parse")
        }
        
        return ""
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"