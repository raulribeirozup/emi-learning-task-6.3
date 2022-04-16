//
//  TimeInterval+DateComponentsFormatter.swift
//  LearningTask-6.3
//
//  Created by rafael.rollo on 15/04/2022.
//

import Foundation

extension DateComponentsFormatter {
    
    static func format(timeInterval: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .abbreviated
        formatter.allowedUnits = [.hour, .minute]
        
        return formatter.string(from: timeInterval)!
    }
    
}
