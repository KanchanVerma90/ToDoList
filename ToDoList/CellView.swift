//
//  CellView.swift
//  ToDoList
//
//  Created by Kanchan Verma on 09/05/25.
//

import SwiftUI
import CoreData

struct CellView: View {
    var taskDetail: TaskDetail?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(taskDetail?.title ?? "No Title")
                .font(.headline)
            Text(taskDetail?.taskdescription ?? "")
                .font(.subheadline)
            HStack {
                Text("Priority: \(String(describing: taskDetail?.priorityNumber))")
                Spacer()
                Text("\(taskDetail?.createTime?.daysSince() ?? 0) days ago")
                    .font(.caption)
                .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 4)
    }
}

extension Date {
    func daysSince() -> Int {
            return Calendar.current.dateComponents([.day], from: self, to: Date()).day ?? 0
        }
}

