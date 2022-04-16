//
//  CustomPatterns+DateFormatter.swift
//  LearningTask-6.3
//
//  Created by rafael.rollo on 15/04/2022.
//

import Foundation

extension DateFormatter {
    
    private static var dayPlusMonthFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter
    }
    
    private static var weekdayStringFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter
    }
    
    private static var hoursPlusMinutesFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "kk:mm"
        return formatter
    }
    
    enum CustomPattern {
        case dayPlusMonth
        case weekdayString
        case hoursPlusMinutes
        
        var formatter: DateFormatter {
            switch self {
            case .dayPlusMonth:
                return DateFormatter.dayPlusMonthFormatter
            case .weekdayString:
                return DateFormatter.weekdayStringFormatter
            case .hoursPlusMinutes:
                return DateFormatter.hoursPlusMinutesFormatter
            }
        }
    }
    
    static func format(date: Date, to customPattern: CustomPattern) -> String {
        return customPattern.formatter.string(from: date)
    }
    
}
