//
//  TaskRowView.swift
//  SimpleToDo
//
//  Created by Nathan Luk on 8/11/2022.
//

import SwiftUI

struct TaskRowView: View {
    
    let item: TaskItem
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
        }
        .font(.title3)
        .padding(.vertical, 8)
    }
}

struct TaskRowView_Previews: PreviewProvider {
    
    static var item1 = TaskItem(title: "Task 1", isCompleted: false)
    static var item2 = TaskItem(title: "Task 2", isCompleted: true)
    
    static var previews: some View {
        Group {
            TaskRowView(item: item1)
            TaskRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
