//
//  Speed.swift
//  TimeTravel
//
//  Created by Mirim An on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    case none = 0.0
    case slow = 50.0
    case medium = 150.0
    case fast = 1000.0
    case lightSpeed = 1000000.0
    
    init(spaceSpeed:Double) {
        switch spaceSpeed {
        case 0.0:
            self = .none
        case 1..<150:
            self = .slow
        case 150..<999:
            self = .medium
        case 1000..<1000000:
            self = .fast
        default:
            self = .lightSpeed
        }
    }
    
    var isTravelingAtLightSpeed: Bool {
            if self.rawValue == 1000000.0 {
            return true
        }
        return false
}
    func isFaster(than speed:Speed)->Bool{
        return self.rawValue > speed.rawValue
    }
}
