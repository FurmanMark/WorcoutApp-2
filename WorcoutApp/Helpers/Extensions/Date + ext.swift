//
//  Date + ext.swift
//  WorcoutApp
//
//  Created by Mark Furman on 15.05.2024.
//

import UIKit

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startOfWeek: Date {
        let weekInterval = calendar.dateInterval(of: .weekOfYear, for: self)
        return weekInterval?.start ?? self
    }
    
    func agoForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
}

