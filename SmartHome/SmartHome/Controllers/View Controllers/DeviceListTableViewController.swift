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
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "deviceCell", for: indexPath) as? DeviceTableViewCell else {return UITableViewCell()}

        // Configure the cell...

        return cell
    }
    
    @IBAction func addDeviceButtonTapped(_ sender: Any) {
    }
    
}
