//
//  ListView.swift
//  SimpleToDo
//
//  Created by Nathan Luk on 8/11/2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var taskList: [TaskItem] = [
        .init(title: "Task 1", isCompleted: false),
        .init(title: "Task 2", isCompleted: true),
        .init(title: "Task 3", isCompleted: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(taskList) { task in
                    TaskRowView(item: task)
                }
            }
            .listStyle(.plain)
            .navigationTitle("To-Do List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    //TODO: implement edit
                    Text("Edit")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    //TODO: implement add
                    Text("Add")
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
