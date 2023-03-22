//
//  TaskList.swift
//  TestProject
//
//  Created by Quentin Cornu on 22/03/2023.
//

import SwiftUI

struct TaskList: View {
    
    // MARK: State properties
    @State private var isShowingNewTaskView = false
    @State private var tasks: [Task] = []
    
    var body: some View {
        List {
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Button {
                isShowingNewTaskView = true
            } label: {
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
            }
            .padding()
        }
        .sheet(isPresented: $isShowingNewTaskView) {
            NewTaskView(tasksList: $tasks)
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
