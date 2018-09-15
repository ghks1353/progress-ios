//
//  PGViewExtensions.swift
//  Progress
//
//  Created by SEOK HWAN AN on 2018. 9. 15..
//  Copyright © 2018년 Seru. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
	
	/// Show UIAlertController with title and messasge
	func dialog( title: String? = nil, message: String? = nil,
				 positive: String? = nil, negative: String? = nil,
				 positived: ((UIAlertAction) -> Void)? = nil, negatived: ((UIAlertAction) -> Void)? = nil ) {
		let container: UIAlertController = UIAlertController( title: title,
															  message: message,
															  preferredStyle: .alert )
		if positive != nil {
			container.addAction( UIAlertAction(title: positive, style: .default, handler: positived) )
		}
		if negative != nil {
			container.addAction( UIAlertAction(title: negative, style: .default, handler: negatived) )
		}
		
		present(container, animated: true, completion: nil)
	} // end func
	
	/// Show UIAlertController with list
	func dialog( title: String? = nil, message: String? = nil,
				 actions str: [String] = [], handler: ((UIAlertAction, Int) -> Void)? = nil ) {
		let container: UIAlertController = UIAlertController( title: title,
															  message: message,
															  preferredStyle: .actionSheet )
		for i: Int in 0 ..< str.count {
			container.addAction( UIAlertAction( title: str[i],
												style: .default,
												handler: { sender in handler?( sender, i ) } ))
		} // end for
		
		present(container, animated: true, completion: nil)
	} // end func
	
} // end ext
