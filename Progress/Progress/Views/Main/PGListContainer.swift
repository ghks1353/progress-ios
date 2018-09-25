//
//  PGListContainer.swift
//  Progress
//
//  Created by SEOK HWAN AN on 2018. 9. 16..
//  Copyright © 2018년 Seru. All rights reserved.
//

import Foundation
import UIKit

/// List container with big title
class PGListContainer: UIView, UITableViewDelegate, UITableViewDataSource {
	
	private let headingContainer: UIView = UIView()
	
	private let heading: UILabel = UILabel()
	private let percentage: UILabel = UILabel()
	
	private let table: UITableView = UITableView()
	
	
	convenience init() {
		self.init(frame: .zero)
	}
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		table.delegate = self
		table.dataSource = self
		
		headingContainer.add( heading, percentage )
		add( headingContainer, table )
	}
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		
		
	}
	
	
} // end class
