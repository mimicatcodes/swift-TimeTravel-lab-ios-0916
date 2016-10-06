//
//  Planet.swift
//  TimeTravel
//
//  Created by Mirim An on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Planet:Int {
    
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    var hasLife:Bool {
        if self == .mars
            || self == .earth {
            return true
        }
        return false
    }
    
    var weather:Weather {
        switch self {
        case .earth:
            return .warm
        case .venus:
            return .superDuperHot
        case .mercury:
            return .superDuperHot
        case .saturn:
            return .cold
        case .uranus:
            return .cold
        case .neptune:
            return .cold
        case .jupiter:
            return .cold
        case .mars:
            return .cold
        }
    
    }

}
