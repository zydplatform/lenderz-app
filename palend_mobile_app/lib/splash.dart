import 'package:flutter/material.dart';
import 'login.dart';
import 'welcome.dart';
import 'landing.dart';

class SplashScreen extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen>{
    @override
    void initState(){
        super.initState();
        _navigatetologin();
    }
    _navigatetologin() async{
        await Future.delayed(Duration(milliseconds: 3000), () {});
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => WelcomeScreen()
        ));
        
    }

    

    @override
    Widget build(BuildContext context){
        return initWidget();
    }


    Widget initWidget(){
        return Scaffold(
            body: Stack(
                children: [
                    Container(
                        decoration: BoxDecoration(
                            color: new Color(0xffF5591F
                        ),
                        gradient: LinearGradient(
                            colors: [(new Color(0xffffff)), (new Color(0xffffff))],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                        )
                        ),
                        ),
                        Center(
                            child: Container(
                                child: Image.asset("images/logo2.png"),
                        ),
                    )
                ],
            ),
        );
    }
            
}