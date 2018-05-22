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
		cell.textLabel?.text = "First Last"
		cell.imageView?.image = UIImage(named: "user")
		return cell
	}
}

// Super awesome model!
struct User: Codable {
	var firstName: String
	var lastName: String
	var username: String
	var password: String
}

extension User {
	init(responseUser: ResponseUser) {
		self.firstName = responseUser.name.first
		self.lastName = responseUser.name.last
		self.username = responseUser.login.username
		self.password = responseUser.login.password
	}
}

// Response Model
struct UserResponse: Codable {
	var results: [ResponseUser]
}

// Response User
struct ResponseUser: Codable {
	struct Name: Codable {
		var first: String
		var last: String
	}
	var name: Name
	
	struct Login: Codable {
		var username: String
		var password: String
	}
	var login: Login
}
