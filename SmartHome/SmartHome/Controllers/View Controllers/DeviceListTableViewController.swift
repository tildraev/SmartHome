//
//  DeviceListTableViewController.swift
//  AddressBook
//
//  Created by Arian Mohajer on 1/26/22.
//

import UIKit

class DeviceListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DeviceController.sharedInstance.devices.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "deviceCell", for: indexPath) as? DeviceTableViewCell else {return UITableViewCell()}

        // Configure the cell...
        let device = DeviceController.sharedInstance.devices[indexPath.row]
        cell.updateCell(device: device)
        cell.delegate = self

        return cell
    }
    
    func presentAlertController() {
        //Create alert controller
        let alertController = UIAlertController(title: "New Smart Device", message: "Enter the device's name", preferredStyle: .alert)
        //Create actions
        alertController.addTextField { textField in
            textField.placeholder = "Smart Device Name..."
        }
        
        //Add actions to alert controller
        let dismissAction = UIAlertAction(title: "Cancel", style: .destructive)
        alertController.addAction(dismissAction)
        
        let confirmAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let deviceNameText = alertController.textFields?.first?.text else { return }
            DeviceController.sharedInstance.createDevice(named: deviceNameText)
            self.tableView.reloadData()
        }
        alertController.addAction(confirmAction)

        
        //Present the alert controller
        present(alertController, animated: true)
    }
    
    @IBAction func addDeviceButtonTapped(_ sender: Any) {
        presentAlertController()
    }
    
}

extension DeviceListTableViewController: DeviceTableViewCellDelegate {
    func toggleIsOn(cell: DeviceTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let device = DeviceController.sharedInstance.devices[indexPath.row]
        DeviceController.sharedInstance.toggleIsOn(device: device)
        cell.updateCell(device: device)
        print(DeviceController.sharedInstance.devices[indexPath.row].isOn)
    }
}
