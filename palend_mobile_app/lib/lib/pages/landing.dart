import 'package:flutter/material.dart';
import 'welcome.dart';
import 'package:palend/classes/language_constants.dart';

import '../widgets/appbar.dart';

class LandingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
              height: 100,
                color: Colors.green, child: Text(''),

         ),
        body: Container(
            color: Colors.black,
            child: Stack(
                children: [
                    Positioned.fill(
                        
                        child: Opacity(
                            opacity: 0.3,
                            child: Image.asset('images/img2.jpg', 
                        fit: BoxFit.cover), 
                    ),
                    ),
                    Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                                Center(
                                  child: ClipOval(
                                    child: Container(
                                        width: 180,
                                        height: 180,
                                        color: Color(0xff5771F9),
                                        alignment: Alignment.center,
                                        child: Image.asset("images/logo2.png"),
                                    ),
                                ),),
                                SizedBox(height: 40),
                                Text('Palend',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                                SizedBox(height: 40),
                                Text(translation(context).getLoan,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                ),
                                ),
                                SizedBox(height: 40),
                               /* Padding(
                                    padding: const EdgeInsets.all(20),

                                    child: FlatButton(
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50)
                                        ),
                                    color: Color(0xff80C038),
                                    padding: EdgeInsets.all(25),
                                    child: Text("Borrow",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),

                                ),
                                ),*/
                                Container(
                                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                                splashColor: Color(0xff5771F9).withOpacity(0.2),
                                                highlightColor: Color(0xff5771F9).withOpacity(0.2),
                                                onTap: (){

                                                        Navigator.push(context, MaterialPageRoute(
                                                            builder: (context) => WelcomeScreen()
                                                        ));
                                                },
                                                child: Container(
                                                        padding: EdgeInsets.all(20),
                                                        child: Text(translation(context).borrow,
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(0xff5771F9),
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                        ),
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(50),
                                                            color: Colors.transparent,
                                                            border: Border.all(
                                                                color: Color(0xff5771F9),
                                                                width: 4
                                                            ),
                                                        )
                                                        ),
                                                                ),
                                                        ),
                                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                                splashColor: Color(0xff5771F9).withOpacity(0.2),
                                                highlightColor: Color(0xff5771F9).withOpacity(0.2),
                                                onTap: (){
                                                        Navigator.push(context, MaterialPageRoute(
                                                            builder: (context) => WelcomeScreen()
                                                        ));
                                                },
                                                child: Container(
                                                        padding: EdgeInsets.all(20),
                                                        child: Text(translation(context).lend,
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(0xff5771F9),
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                        ),
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(50),
                                                            color: Colors.transparent,
                                                            border: Border.all(
                                                                color: Color(0xff5771F9),
                                                                width: 4
                                                            ),
                                                        )
                                                        ),
                                                                ),
                                                        ),
                                                    ),
                                )
                            ]
                        )
                    )

                ]
            )
        )

    );
  }
  
}

