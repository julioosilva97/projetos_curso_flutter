import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> tasks = [TaskModel(name: 'name')];

  addTask(TaskModel task) {
    tasks.add(task);
    notifyListeners();
  }

  void toggleDone(TaskModel task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
