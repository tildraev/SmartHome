//
//  DeviceTableViewCell.swift
//  AddressBook
//
//  Created by Arian Mohajer on 1/26/22.
//

import UIKit

class DeviceTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var deviceSwitch: UISwitch!
    
    
    @IBAction func deviceSwitchToggled(_ sender: Any) {
    }
}
