//
//  ViewController.swift
//  RandomUsers
//
//  Created by Etienne Martin on 2018-05-22.
//  Copyright © 2018 EtienneMartin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var users = [User]()
    
	override func viewDidLoad() {
		super.viewDidLoad()
        getUsers()
	}
    
    func getUsers() {
        UserProvider.getUsers(url: "https://randomuser.me/api/?seed=foobar&results=10") { users in
            print(users)
            if let users = users {
                self.users = users
            } else {
                self.users = []
            }
            self.tableView.reloadData()
        }
    }

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.users.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: .default, reuseIdentifier: "UserCell")
		cell.textLabel?.text = self.users[indexPath.row].firstName + self.users[indexPath.row].lastName
		cell.imageView?.image = UIImage(named: "user")
		return cell
	}
}

