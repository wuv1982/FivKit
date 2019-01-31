//
//  Date.swift
//  FivKit
//
//  Created by wuwei on 2019/01/31.
//  Copyright © 2019年 5v. All rights reserved.
//

import Foundation

public extension Date {
    var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }

    var endOfDay: Date {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: startOfDay)!
    }

    public func toString(format:String = "yyyyMMdd HH:mm:ss.SSS") -> String {
        let dfm = DateFormatter()
        dfm.dateFormat = format
        dfm.locale = Locale.init(identifier: "en_US")
        return dfm.string(from: self)
    }
}
