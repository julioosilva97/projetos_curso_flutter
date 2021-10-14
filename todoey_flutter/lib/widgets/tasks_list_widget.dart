import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile_widget.dart';

class TasksListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build list');
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return ListTile(
              onLongPress: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('Excluir Tarefa'),
                  content: Text('Deseja excluir a tarefa ${task.name} ?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Não'),
                    ),
                    TextButton(
                      onPressed: () {
                        taskData.removeTask(index);
                        Navigator.pop(context);
                      },
                      child: Text('Sim'),
                    ),
                  ],
                ),
              ),
              title: Text(
                task.name,
                style: TextStyle(
                  decoration: task.isDone ? TextDecoration.lineThrough : null,
                ),
              ),
              trailing: Checkbox(
                activeColor: Colors.lightBlueAccent,
                value: task.isDone,
                onChanged: (bool? newValue) {
                  taskData.toggleDone(task);
                },
              ),
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
