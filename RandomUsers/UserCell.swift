//
//  UserCell.swift
//  RandomUsers
//
//  Created by Etienne Martin on 2018-05-22.
//  Copyright © 2018 EtienneMartin. All rights reserved.
//

import Foundation
import UIKit

class UserView: UIView {
	
	private var image = UIImageView()
	private var nameLabel = UILabel()
	
	init() {
		super.init(frame: .zero)
		backgroundColor = .red
		
		image.translatesAutoresizingMaskIntoConstraints = false
		addSubview(image)
		nameLabel.translatesAutoresizingMaskIntoConstraints = false
		addSubview(nameLabel)
		
		let layout = layoutMarginsGuide
		NSLayoutConstraint.activate([
			image.leadingAnchor.constraint(equalTo: layout.leadingAnchor),
			image.topAnchor.constraint(equalTo: layout.topAnchor),
			image.bottomAnchor.constraint(equalTo: layout.bottomAnchor),
			
			nameLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
			nameLabel.centerYAnchor.constraint(equalTo: image.centerYAnchor),
			nameLabel.trailingAnchor.constraint(equalTo: layout.trailingAnchor)
			])
		
		// Default Content
		image.image = UIImage(named: "user")
		nameLabel.text = "First Last"
		nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("Unsupported.")
	}
}

class UserCell: UITableViewCell {
	
	private var userView = UserView()
	
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
//		contentMode = .scaleToFill
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("Unsupported")
	}
	
	override var contentView: UIView {
		return userView
	}
}
