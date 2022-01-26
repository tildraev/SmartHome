//
//  Device.swift
//  SmartHome
//
//  Created by Arian Mohajer on 1/26/22.
//

import Foundation

class Device: Codable {
    let name: String
    var isOn: Bool
    
    init(named name: String, isOn: Bool = false) {
        self.name = name
        self.isOn = isOn
    }
}
