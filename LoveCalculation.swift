//
//  LoveCaculation.swift
//  Love Cal
//
//  Created by NOMAD on 1/18/20.
//  Copyright © 2020 NOMAD. All rights reserved.
//

import Foundation

class LoveCalculation {
    
    
    // MARK: This function generates random number and result for the That Love Caculator App.
    
    func loveCalculateFunction(yourName: String, theirName: String) -> String {
        let loveScore = arc4random_uniform(101)
        if loveScore > 95 {
            return ("Your Love score is \(loveScore) % The verdict Stay away from candles - your relationship is hot enough already!")
            
        } else if loveScore > 90 {
            return ("Your Love score is \(loveScore) %  For you guys, Love is a promise; it is a souvenir, once given never forgotten. Cheers!")
        } else if loveScore > 80 && loveScore < 90 {
            return ("Your Love score is \(loveScore) % You guys are most alive when you’re in love with each other. Cheers!!")
        } else if loveScore > 60 && loveScore < 80 {
            return ("Your Love score is \(loveScore) % The chance of this relationship workout between you is not very big, but a relationship is very well possible, if the two of you really want it to, and are prepared to make some sacrifices for it.")
        } else if loveScore < 50 {
            return ("Your Love score is \(loveScore) % This relationship might work out, but the chance is very small. A successful relationship is possible, but you both have to work on it.")
        }
        return ("Your Love score is \(loveScore) no love possible between you two 😢")
    }
    
    
    
}
