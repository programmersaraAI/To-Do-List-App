import Foundation

class TaskManager {
    static let shared = TaskManager()
    private init() {}
    
    private var tasks: [Task] = []

    func addTask(title: String) {
        let newTask = Task(id: UUID().uuidString, title: title, isCompleted: false)
        tasks.append(newTask)
        saveTasks()
    }

    func getTasks() -> [Task] {
        return tasks
    }

    func updateTask(id: String, isCompleted: Bool) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].isCompleted = isCompleted
            saveTasks()
        }
    }

    func deleteTask(id: String) {
        tasks.removeAll { $0.id == id }
        saveTasks()
    }
    
    private func saveTasks() {
        // Code to save tasks (e.g. using UserDefaults or Core Data)
    }
}
