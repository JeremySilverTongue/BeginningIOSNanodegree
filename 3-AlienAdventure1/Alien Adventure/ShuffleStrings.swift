//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        let l1 = s1.characters.count;
        let l2 = s2.characters.count;
        let lShuffle = shuffle.characters.count;
        
        if (l1 + l2 != lShuffle){
            return false
        } else if (l1 == 0 && l2 == 0 && lShuffle == 0){
            return true
        }
        
        let index1 = s1.startIndex
        var position1 = 0
        
        let index2 = s2.startIndex
        var position2 = 0
        
        for char in shuffle.characters{
            if ( position1 < l1 && char == s1[index1.advancedBy(position1)]){
                position1 = position1 + 1
                continue
            } else if (position2 < l2 && char == s2[index2.advancedBy(position2)]){
                position2 = position2 + 1
                continue
            } else {
                return false
            }
        }
        
        return true
    }
}
