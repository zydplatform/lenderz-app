import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'classes/language.dart';
import 'classes/language_constants.dart';
import 'main.dart';
import 'LanguageChangeProvider.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState()=> InitState();

}

class InitState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context){
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
      body: SingleChildScrollView(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language? language){
                if(language !=null) {
                  MyApp.setLocale(context, Locale(language.languageCode, ''));
                }

              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            )
          )
        ]
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
                        "Welcome!",
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
                                child: Image.asset("images/logo2.png"),
                                height: 300,
                                width: 300,
                                ),

            GestureDetector(
              onTap: () => {
                 Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen()
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
                      AppLocalizations.of(context).user_borrow,
                      style: TextStyle(
                        color: Colors.white
                      ),
              ),
              ),
              
            ),

             GestureDetector(
              onTap: () => {
                 Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen()
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
                      "LENDER",
                      style: TextStyle(
                        color: Colors.white
                      ),
              ),
              
              ),
              
              
            ),
            ElevatedButton(onPressed: (){
              context.read<LanguageChangeProvider>().changeLocale("es");
            }, child: Text("Spanish")),
            ElevatedButton(onPressed: (){
              context.read<LanguageChangeProvider>().changeLocale("en");
            }, child: Text("English")),
            
          ],
        ),
      ),
    );
  }
}