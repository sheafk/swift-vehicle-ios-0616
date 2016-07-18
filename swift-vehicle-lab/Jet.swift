//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Shea Furey-King on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        if inFlight {
        altitude += maxAltitude / 5
        if altitude > maxAltitude {
            altitude = maxAltitude
        }
        self.decelerate()
    }
    }
    
    override func dive() {
        altitude -= maxAltitude / 5
        if altitude < 0 {
            altitude = 0
        }
        self.accelerate()
    }
    
    func afterburner() {
        
        if inFlight && (speed == maxSpeed) {
            speed = maxSpeed * 2
        }
    }
}