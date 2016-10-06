//
//  spaceShip.swift
//  TimeTravel
//
//  Created by Mirim An on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    var name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    
    var description: String {
        return "Woot Woot"
    }
    
    init(name: String, currentPlanet: Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool {
        if self.speed.isTravelingAtLightSpeed { return true
        }
        return false
    }
    
    func isFaster(than spaceShip:SpaceShip)->Bool {
        if self.isFaster(than: spaceShip) {
            return true }
        return false
    }
    
    func travel(to planet:Planet)-> Bool {
        
        switch planet {
        case .venus:
            if self.speed == .fast {
                self.currentPlanet = .venus
                return true
            } else if self.speed == .lightSpeed {
                self.currentPlanet = .mars
                return false
            }
        case .earth:
            if self.speed == .fast {
                self.currentPlanet = .earth
                return true
            }
        case .mars:
            if self.speed == .lightSpeed {
                self.currentPlanet = .mars
                return true
            }
        case .jupiter:
            if self.speed == .slow {
                self.currentPlanet = .jupiter
                return true
            }
        case .saturn:
            if self.speed == .medium {
                self.currentPlanet = .saturn
                return true
            }
        case .uranus:
            if self.speed == .slow {
                self.currentPlanet = .uranus
                return true
            }
        case .neptune:
            if self.speed == .fast {
                self.currentPlanet = .neptune
                return true
            }
            if self.speed == .lightSpeed {
                self.currentPlanet = .mars
                return false
            }
        default:
            if self.currentPlanet == .mercury {
                return false
            }
        }
        return false
    }
}
