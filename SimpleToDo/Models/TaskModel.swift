//
//  TaskModel.swift
//  SimpleToDo
//
//  Created by Nathan Luk on 8/11/2022.
//

import Foundation

struct TaskItem: Identifiable {
    let id: UUID = UUID()
    let title: String
    let isCompleted: Bool
}
