import UIKit

class TaskListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    private let viewModel = TaskViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "To-Do List"
        setupTableView()
    }

    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBAction func addTaskButtonTapped(_ sender: Any) {
        // Code to add task using an alert
    }
}

extension TaskListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let task = viewModel.tasks[indexPath.row]
        cell.textLabel?.text = task.title
        cell.accessoryType = task.isCompleted ? .checkmark : .none
        return cell
    }
}
