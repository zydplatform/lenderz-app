import 'package:flutter/material.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import 'package:palend/widgets/checkbox_widget.dart';

import 'package:palend/widgets/button_raised.dart';
import '../models/target_list.dart';
import 'package:palend/widgets/stepper.dart';
import '../widgets/appbar.dart';

import 'stepper.dart';

// class MyStepWizard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Stepper Demo'),
//     );
//   }
// }

class MyStepWizard extends StatefulWidget {
  //MyStepWizard({required Key key, required this.title}) : super(key: key);
  //final String title;

  @override
  _MyStepWizardState createState() => _MyStepWizardState();
}

class _MyStepWizardState extends State<MyStepWizard> {
  int currentStep = 1;
  int stepLength = 5;
  late bool complete;

  next() {
    if (currentStep <= stepLength) {
      goTo(currentStep + 1);
    }
  }

  back() {
    if (currentStep > 1) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        height: 50,
        color: Palette.mybuttonColors,
        child: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[ 

          NumberStepper(
            
            totalSteps: stepLength,
            width: MediaQuery.of(context).size.width,
            curStep: currentStep,
            stepCompleteColor: Colors.blue,
            currentStepColor: Color(0xffdbecff),
            inactiveColor: Color(0xffbababa),
            lineWidth: 3.5,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: currentStep <= stepLength
                ? Text(
                    "Step $currentStep",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  )
                : Text(
                    "Completed!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  //onSurface: Colors.blue,
                  disabledForegroundColor: Colors.grey[50]),
              //disabledColor: Colors.grey[50],
              onPressed: currentStep == 1
                  ? null
                  : () {
                      back();
                    },
              child: Text('Back'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                next();
              },
              child: Text(
                currentStep == stepLength ? 'Finish' : 'Next',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  //onSurface: Colors.blue,
                  foregroundColor: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
