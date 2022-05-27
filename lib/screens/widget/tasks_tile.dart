// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasksTile extends StatelessWidget {
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'The task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: (bool) {},
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final void Function(bool?) toggleCheckBoxState;
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}

// (bool? checkBoxState) {
//           if (checkBoxState != null) {
//             setState(() {
//               isChecked = checkBoxState;
//             });
//           }
//         }