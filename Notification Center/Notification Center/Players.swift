//
//  Players.swift
//  Notification Center
//
//  Created by Yavuz Güner on 25.04.2022.
//

import Foundation


class Players {
    var playerName : String?
    var playerAge : Int?
    
    init() {
        
    }
    
    init(playerName:String,playerAge:Int) {
        self.playerName = playerName
        self.playerAge = playerAge
    }
}
