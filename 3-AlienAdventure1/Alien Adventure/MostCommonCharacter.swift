//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Dictionary {
    
    func get(key: Key, defaultValue: Value) -> Value {
        if let value = self[key] {
            return value
        } else {
            return defaultValue
        }
    }
}

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var counts = Dictionary<Character, Int>(minimumCapacity: 26)
        
        for item in inventory{
            let name = item.name.lowercaseString
            
            for char in name.characters{
                let previous = counts.get(char, defaultValue: 0)
                counts[char] = previous + 1
            }
            
        }
        
        var maxChar:Character = "?"
        var maxCount = 0
        for (char, count) in counts{
            if count > maxCount {
                maxCount = count
                maxChar = char
            }
        }
        
        if maxChar != "?" {
            return maxChar
        } else {
            return nil
        }
    }
}
