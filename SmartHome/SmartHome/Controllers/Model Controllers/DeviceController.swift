//
//  DeviceController.swift
//  SmartHome
//
//  Created by Arian Mohajer on 1/26/22.
//

import Foundation

class DeviceController {
    //Singleton
    static var sharedInstance = DeviceController()
    //Source of truth
    var devices: [Device] = []
    
    init() {
        loadFromDisk()
    }
    
    // MARK: - CRUD functions
    func createDevice(named deviceName: String){
        let newDevice = Device(named: deviceName)
        devices.append(newDevice)
        saveToDisk()
    }
    
    func toggleIsOn(device: Device){
        device.isOn.toggle()
        saveToDisk()
    }
    
    private var fileURL: URL? {
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let url = documentsDirectory.appendingPathComponent("devices.json")
        return url
    }
    
    func saveToDisk(){
        guard let url = fileURL else { return }
        do {
            let data = try JSONEncoder().encode(devices)
            try data.write(to: url)
        } catch {
            print(error)
        }
    }
    
    func loadFromDisk(){
        guard let url = fileURL else { return }
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([Device].self, from: data)
            self.devices = decodedData
        } catch {
            print(error)
        }
    }
}
