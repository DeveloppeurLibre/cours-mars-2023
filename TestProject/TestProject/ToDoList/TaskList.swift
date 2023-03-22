//
//  TaskList.swift
//  TestProject
//
//  Created by Quentin Cornu on 22/03/2023.
//

import SwiftUI

struct TaskList: View {
    
    let tasks: [Task]
    
    var body: some View {
        List {
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Image(systemName: "plus")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding()
                .background(
                    Circle()
                        .foregroundColor(.blue)
                )
                .shadow(radius: 10, y: 5)
                .padding()
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(tasks: Task.previewTasks)
    }
}
