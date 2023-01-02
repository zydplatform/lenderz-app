import 'package:flutter/material.dart';
// import 'package:palend/classes/language.dart';
// import 'package:palend/classes/language_constants.dart';
// import 'package:palend/main.dart';
// import 'package:palend/widgets/lenderz_pallet.dart';

class MyButtonsWidget extends StatefulWidget {
  const MyButtonsWidget({Key? key}) : super(key: key);

  @override
  _MyButtonsWidgetState createState() => _MyButtonsWidgetState();
}

class _MyButtonsWidgetState extends State<MyButtonsWidget> {
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        textStyle: TextStyle(color: Colors.blue),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      onPressed: () => {},
      icon: Icon(
        Icons.send_rounded,
      ),
      label: Text(
        'Next',
      ),
    );

    // RaisedButton(
    //             onPressed: () {},
    //             color: Theme.of(context).accentColor,
    //             child: Padding(
    //               padding: EdgeInsets.fromLTRB(
    //                   SizeConfig.safeBlockHorizontal * 5,
    //                   0,
    //                   SizeConfig.safeBlockHorizontal * 5,
    //                   0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: <Widget>[
    //                   Text(
    //                     'Continue',
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.w700,
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                   Icon(
    //                     Icons.arrow_forward,
    //                     color: Colors.white,
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ),
  }
}
