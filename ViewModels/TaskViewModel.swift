import Foundation

class TaskViewModel {
    private var taskManager = TaskManager.shared

    var tasks: [Task] {
        return taskManager.getTasks()
    }

    func addTask(title: String) {
        taskManager.addTask(title: title)
    }

    func deleteTask(id: String) {
        taskManager.deleteTask(id: id)
    }
    
    func updateTask(id: String, isCompleted: Bool) {
        taskManager.updateTask(id: id, isCompleted: isCompleted)
    }
}
