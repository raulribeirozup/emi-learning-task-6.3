//
//  SessionStore.swift
//  LearningTask-6.3
//
//  Created by Raul Ribeiro on 22/11/22.
//

import Foundation

protocol SessionStore: AnyObject {
    var sessions: [Sessions] { get }
}
