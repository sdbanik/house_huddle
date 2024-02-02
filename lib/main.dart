import 'package:flutter/material.dart';
import '../controller/task_controller.dart';
import '../model/house_model.dart';

void main() {
  runApp(HouseHuddleApp());
}

class HouseHuddleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HouseHuddle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskPage(),
    );
  }
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final TaskController _controller = TaskController();

  @override
  void initState() {
    super.initState();
    // Initialize your tasks here, for demonstration purposes
    _controller.addTask(Task(id: 1, title: 'Clean the kitchen', description: 'Wash the dishes, clean the counter.'));
    _controller.addTask(Task(id: 2, title: 'Buy groceries', description: 'Milk, Bread, Eggs'));
  }

  @override
  Widget build(BuildContext context) {
    final tasks = _controller.getTasks();
    return Scaffold(
      appBar: AppBar(
        title: Text('HouseHuddle Tasks'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
            trailing: Icon(task.isCompleted ? Icons.check_box : Icons.check_box_outline_blank),
            onTap: () {
              setState(() {
                _controller.toggleTaskCompleted(task.id);
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action for the button here, like adding a new task
        },
        tooltip: 'Add Task',
        child: Icon(Icons.add),
      ),
    );
  }
}
