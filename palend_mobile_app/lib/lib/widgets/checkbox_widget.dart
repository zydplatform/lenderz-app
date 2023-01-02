import 'package:flutter/material.dart';
class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({Key? key}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? isChecked = false;
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
          value: isChecked,
                activeColor: Colors.blueAccent,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                },
      )
    );
    
  }
}
