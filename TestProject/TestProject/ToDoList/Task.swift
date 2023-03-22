//
//  Task.swift
//  TestProject
//
//  Created by Quentin Cornu on 22/03/2023.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    let dueDate: Date?
    let priority: Priority?
    
    init(name: String, dueDate: Date? = nil, priority: Priority? = nil) {
        self.name = name
        self.dueDate = dueDate
        self.priority = priority
    }
    
    enum Priority {
        case high
        case normal
        case low
    }
}

extension Task {
    static let previewTasks = [
        Task(name: "Rendre le projet"),
        Task(name: "Faire l'appel", dueDate: .now + 10000),
        Task(name: "Commander à manger", priority: .high),
        Task(name: "Finir le rapport", priority: .low)
    ]
}
