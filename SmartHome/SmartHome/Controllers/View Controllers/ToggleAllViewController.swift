//
//  ToggleAllViewController.swift
//  SmartHome
//
//  Created by Arian Mohajer on 1/27/22.
//

import UIKit

let TurnOffAllNotificationName = Notification.Name(rawValue: "TurnOffAllDevicesNotification")
let TurnOnAllNotificationName = Notification.Name(rawValue: "TurnOnAllDevicesNotification")

class ToggleAllViewController: UIViewController {

    @IBOutlet weak var toggleAllDevicesOffButton: UIButton!
    @IBOutlet weak var toggleAllDevicesOnButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleAllDevicesOffButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name:
                                            
        TurnOffAllNotificationName, object: nil)
    }
    
    
    @IBAction func toggleAllDevicesOnButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name:
                                            
        TurnOnAllNotificationName, object: nil)
    }
}
