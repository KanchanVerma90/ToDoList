//
//  TaskDetailView.swift
//  ToDoList
//
//  Created by Kanchan Verma on 09/05/25.
//

import SwiftUI
import Foundation

struct TaskProp  {
    var timeStamp: Date
    var title: String
    var descr: String
    var isCompleted: Bool
    var priorityNumber: Int
}

struct TaskDetailView: View {
    var body: some View {
        @State var taskProp = TaskProp(timeStamp: Date(), title: "", descr: "", isCompleted: false, priorityNumber: 0)
        VStack{
            TextField("Enter task title", text: $taskProp.title)
                  .multilineTextAlignment(.center)
            TextEditor(text: $taskProp.descr).multilineTextAlignment(.center)
            TextField("Enter task priority number",  value: $taskProp.priorityNumber, format: .number)
                .keyboardType(.numberPad)
        }
        .padding(15)
        
    }
    
    
}
