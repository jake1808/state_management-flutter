import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key key,
    this.callBack,
  }) : super(key: key);

  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: callBack,
      color: Colors.lightBlueAccent,
      child: Text(
        'Add',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
