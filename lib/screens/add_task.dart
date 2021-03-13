import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/models/task.dart';
import 'package:state_management_examples/models/task_data.dart';
import 'package:state_management_examples/widgets/add_button.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskString;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: '',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                onChanged: (value) {
                  newTaskString = value;
                  print(newTaskString);
                },
              ),
              SizedBox(
                height: 20,
              ),
              AddButton(
                callBack: () {
                  Provider.of<TaskData>(context).addTask(newTaskString);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
