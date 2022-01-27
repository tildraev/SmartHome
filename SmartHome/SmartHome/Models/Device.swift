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
    var id: UUID
    
    init(named name: String, isOn: Bool = false, id: UUID = UUID()) {
        self.name = name
        self.isOn = isOn
        self.id = id
    }
}

extension Device: Equatable {
    static func == (lhs: Device, rhs: Device) -> Bool {
        lhs.isOn == rhs.isOn &&
        lhs.name == rhs.name &&
        lhs.id == rhs.id
    }
}
