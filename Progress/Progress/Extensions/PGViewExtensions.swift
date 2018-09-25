//
//  PGViewExtensions.swift
//  Progress
//
//  Created by SEOK HWAN AN on 2018. 9. 15..
//  Copyright © 2018년 Seru. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
	
	/// ailas of addSubview
	func add( _ view:UIView ) {
		self.addSubview(view)
	} // end func
	
	/// Add subviews with loop
	func add( _ views:UIView... ) {
		views.forEach { obj in
			addSubview(obj)
		}
	}
	
	/// ailas of !isHidden
	var visible:Bool {
		get {
			return !self.isHidden
		}
		set {
			self.isHidden = !newValue
		}
	} // end property
	
	/// ailas of frame.width
	var w:CGFloat {
		get {
			return self.frame.width
		}
	} // end property
	/// ailas of frame.height
	var h:CGFloat {
		get {
			return self.frame.height
		}
	} // end property
	/// ailas of frame.minX
	var x:CGFloat {
		get {
			return self.frame.minX
		}
	} // end property
	/// ailas of frame.minY
	var y:CGFloat {
		get {
			return self.frame.minY
		}
	} // end property
	/// ailas of frame.maxX
	var mx:CGFloat {
		get {
			return self.frame.maxX
		}
	} // end property
	/// ailas of frame.maxY
	var my:CGFloat {
		get {
			return self.frame.maxY
		}
	} // end property
	
	/// alias of sizeToFit
	func fit( to prefix: CGFloat = 0 ) {
		self.frame = CGRect( x: self.x, y: self.y, width: prefix, height: 0 )
		self.sizeToFit()
	} // end func
	
}

/// CGSize extensions
public extension CGSize {
	
	/// ailas of size.width
	var w:CGFloat {
		get {
			return self.width
		}
	} // end property
	
	/// ailas of size.height
	var h:CGFloat {
		get {
			return self.height
		}
	} // end property
	
} // end extensions

/// CGRect extension
public extension CGRect {
	
	/// ailas of frame.width
	var w:CGFloat {
		get {
			return self.width
		}
	} // end property
	
	/// ailas of frame.height
	var h:CGFloat {
		get {
			return self.height
		}
	} // end property
	
	/// ailas of frame.minX
	var x:CGFloat {
		get {
			return self.minX
		}
	} // end property
	/// ailas of frame.minY
	var y:CGFloat {
		get {
			return self.minY
		}
	} // end property
	/// ailas of frame.maxX
	var mx:CGFloat {
		get {
			return self.maxX
		}
	} // end property
	/// ailas of frame.maxY
	var my:CGFloat {
		get {
			return self.maxY
		}
	} // end property
	
} // end extension

extension UIViewController {
	
	/// ailas of view.addSubview
	func add( _ view:UIView ) {
		self.view.addSubview(view)
	} // end func
	
	/// Add subviews with loop
	func add( _ views:UIView... ) {
		views.forEach { obj in
			view.addSubview(obj)
		}
	}
	
	/// ailas of view.frame.width
	var w:CGFloat {
		get {
			return self.view.frame.width
		}
	} // end property
	/// ailas of view.frame.height
	var h:CGFloat {
		get {
			return self.view.frame.height
		}
	} // end property
	
	/// Fetch safearea
	var safe:UIEdgeInsets {
		get {
			if #available(iOS 11.0, *) {
				return self.view.safeAreaInsets
			} else { // fallback
				return UIEdgeInsets.zero
			} // end if
		}
	} // end variable
	
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
