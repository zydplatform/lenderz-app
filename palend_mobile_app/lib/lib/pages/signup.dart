import 'package:flutter/material.dart';

import 'package:palend/classes/language_constants.dart';
import 'package:palend/pages/login.dart';

import '../widgets/appbar.dart';

class SignUpScreen extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
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
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
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
                                            margin: EdgeInsets.only(top: 0),
                                            child: Image.asset("images/logo2.png"),
                                            height: 90,
                                            width: 90,
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(right: 20, top: 0),
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                                translation(context).register,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white
                                                ),
                                            ),

                                        )
                                    ],
                                ),
                            ),
                        ),
                        Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                    Icons.person,
                    color: Color(0xff5771F9),
                  ),
                  hintText: translation(context).enterFirstName,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                    Icons.person,
                    color: Color(0xff5771F9),
                  ),
                  hintText: translation(context).enterLastName,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                    Icons.settings,
                    color: Color(0xff5771F9),
                  ),
                  hintText: translation(context).enterTin,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                    Icons.phone,
                    color: Color(0xff5771F9),
                  ),
                  hintText: translation(context).enterPhone,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),

          Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              Icons.home,
                              color: Color(0xff5771F9),
                            ),
                            hintText: translation(context).enterAddress,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none
                          ),
                        ),
                      ),


            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              hintText: translation(context).enterConfirmPassword,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none
                            ),
                          ),
                        ),



            GestureDetector(
                        onTap: () => {

                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                                )],
                            ),
                        
                        child: Text(
                            translation(context).register,
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
                                Text(translation(context).alreadyMember),
                                GestureDetector(
                                    onTap: () =>{
                                  // Navigator.pop(context)
                                   Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => LoginScreen()
                                  ))


                                    },
                                    child: Text(
                                    translation(context).loginNow,
                                    style: TextStyle(
                                        color: Color(0xff5771F9)
                                    ),
                                    ),
                                )
                                ],
                            ),
                            )


                    ],
                ),
            ),
        );
    }
}