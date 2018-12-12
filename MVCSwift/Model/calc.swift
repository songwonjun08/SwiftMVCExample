//
//  calc.swift
//  MVCSwift
//
//  Created by WONJUN SONG on 12/12/2018.
//  Copyright © 2018 songwonjun. All rights reserved.
//

import Foundation

class calcModel {
    var value1 : Double = 0.0
    var value2 : Double = 0.0
    var result : Double = 0.0
    
    func sum() {
        result = value1 + value2
        
        NotificationCenter.default.post(
            name: NSNotification.Name(rawValue: "resultUpdate"),
            object: nil)
    }
}

