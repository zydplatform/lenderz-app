
import 'package:flutter/material.dart';

import 'package:palend/classes/language_constants.dart';

import '../widgets/appbar.dart';

import 'signup.dart';
import 'landing.dart';

class LoginScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState()=> InitState();

}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context){
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
      appBar: MyAppBar(
              height: 100,
                color: Colors.green, child: Text(''),

         ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xff5771F9),
                gradient: LinearGradient(
                  colors: [(new Color(0xff5771F9)), (new Color(0xff5771F9))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("images/logo2.png"),
                      height: 90,
                      width: 90,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        translation(context).login,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff5771F9),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff5771F9),
                  ),
                  hintText: translation(context).enterEmail,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xff5771F9),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xff5771F9),
                  ),
                  hintText: translation(context).enterPassword,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),
            

            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.centerRight,
              child: Text(translation(context).forgotPassword),
              
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => LandingScreen()
                     ))

              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xff5771F9)), (new Color(0xff5771F9))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
                child: Text(
                      translation(context).login,
                      style: TextStyle(
                        color: Colors.white
                      ),
              ),
              ),
              
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(translation(context).noAccount),
                  GestureDetector(
                    onTap: () =>{
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen()
                      ))

                    },
                    child: Text(
                      translation(context).register,
                      style: TextStyle(
                        color: Color(0xff5771F9)
                      ),
                    ),
                  )
                ]
              )
            )

          ],
        ),
      ),
    );
  }
}