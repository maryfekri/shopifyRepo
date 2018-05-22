//
//  ViewController.swift
//  RandomUsers
//
//  Created by Etienne Martin on 2018-05-22.
//  Copyright © 2018 EtienneMartin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: .default, reuseIdentifier: "UserCell")
		cell.textLabel?.text = "Shitty things"
		cell.imageView?.image = UIImage(named: "user")
		return cell
	}
}
