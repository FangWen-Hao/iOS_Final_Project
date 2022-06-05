//
//  Extensions.swift
//  EaseChat
//
//  Created by Starvian Wibowo on 6/06/22.
//

import Foundation


extension Int {
    var timeStringConverter : String{
        
        let timestampDate = NSDate(timeIntervalSince1970: TimeInterval(self))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let time = dateFormatter.string(from: timestampDate as Date)
        
        return time
    }
}
