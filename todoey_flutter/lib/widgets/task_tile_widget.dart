/*import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function(bool?) changeState;

  const TaskTileWidget(
      {Key? key,
      required this.isChecked,
      required this.taskName,
      required this.changeState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: ,
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: changeState,
      ),
    );
  }
}
*/
