class Task {
  String description;
  DateTime dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, this.isCompleted);

  @override
  String toString() {
    return 'Description: $description, Due Date: $dueDate, Completed: $isCompleted';
  }
}

class ToDoList {
  List<Task> tasks = [];

  void addTask(String description, DateTime dueDate) {
    tasks.add(Task(description, dueDate, false));
    print("Task '$description' added.");
  }

  bool removeTask(String description) {
    for (var task in tasks) {
      if (task.description == description) {
        tasks.remove(task);
        print("Task '$description' removed.");
        return true;
      }
    }
    print("Task '$description' not found.");
    return false;
  }

  bool updateTask(String description, {String? newDescription, DateTime? newDueDate, bool? newStatus}) {
    for (var task in tasks) {
      if (task.description == description) {
        if (newDescription != null) task.description = newDescription;
        if (newDueDate != null) task.dueDate = newDueDate;
        if (newStatus != null) task.isCompleted = newStatus;
        print("Task '$description' updated.");
        return true;
      }
    }
    print("Task '$description' not found.");
    return false;
  }

  void displayTasks() {
    if (tasks.isEmpty) {
      print("No tasks in the list.");
    } else {
      print("To-Do List:");
      tasks.forEach((task) {
        print(task);
      });
    }
  }
}

void main() {
  ToDoList toDoList = ToDoList();

  toDoList.addTask("Complete homework", DateTime(2024, 12, 15));
  toDoList.addTask("Grocery shopping", DateTime(2024, 11, 20));
  toDoList.displayTasks();

  toDoList.updateTask("Complete homework", newStatus: true);
  toDoList.removeTask("Grocery shopping");
  toDoList.displayTasks();
}
