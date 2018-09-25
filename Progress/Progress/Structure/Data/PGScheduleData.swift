//
//  PGScheduleData.swift
//  Progress
//
//  Created by SEOK HWAN AN on 2018. 9. 16..
//  Copyright © 2018년 Seru. All rights reserved.
//

import Foundation

class PGScheduleData: NSObject, NSCoding {
	
	var title: String = ""
	var desc: String = ""
	
	/// 7 days repeat information
	var repeats: [ Bool ] = [ false, false, false, false, false, false, false ]
	/// FireDate information dateComp
	var fireDate: DateComponents = DateComponents()
	
	/// Encode object
	func encode(with c: NSCoder) {
		c.encode(fireDate, forKey: "fireDate")
		//fireDate.encode(to:)
		
	} // end func
	
	/// Decode saved object
	required init(coder d: NSCoder) {
		
	} // end func
	
	
	
	
	
	
}
