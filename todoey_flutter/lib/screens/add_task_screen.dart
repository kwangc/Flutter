import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addCallback);

  final Function addCallback;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(
          top: 20.0,
          left: 50.0,
          right: 50.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 60.0,
              child: FlatButton(
                onPressed: addCallback(newTaskTitle),
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
