import '../model/house_model.dart';

class TaskController {
  final List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void toggleTaskCompleted(int taskId) {
    final task = tasks.firstWhere((task) => task.id == taskId);
    task.isCompleted = !task.isCompleted;
  }

  List<Task> getTasks() => tasks;
}
