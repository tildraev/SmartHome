//
//  DeviceTableViewCell.swift
//  AddressBook
//
//  Created by Arian Mohajer on 1/26/22.
//

import UIKit

protocol DeviceTableViewCellDelegate: AnyObject {
    func toggleIsOn(cell: DeviceTableViewCell)
}

class DeviceTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var deviceSwitch: UISwitch!
    
    weak var delegate: DeviceTableViewCellDelegate?
    
    // MARK: - Helper Function
    func updateCell(device: Device) {
        deviceNameLabel.text = device.name
        deviceSwitch.isOn = device.isOn
    }
    
    // MARK: - IBActions
    @IBAction func deviceSwitchToggled(_ sender: Any) {
        delegate?.toggleIsOn(cell: self)
    }
}
