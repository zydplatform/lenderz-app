import 'package:flutter/material.dart';

class DashboardBorrower extends StatefulWdiget {
    const DashboardBorrower(Key? key) : super(key: key);

    @override
    State<DashboardBorrower> createState() => _DashoardBorrowerState();
}

class _DashoardBorrowerState extends State<DashboardBorrower> {
    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: Colors.grey[300],
            body: SafeArea(
                child: Column(
                    children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 250),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Row(
                                children: [
                                    Text(
                                        'My',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                    Text('Cards',
                                    style: TextStyle(fontSize: 28),
                                    )
                                ],
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add),
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(height: 25),

                        Container(
                            width: 300,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(16),
                            ),

                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    SizedBox(height: 10),
                                    Text('Welcome Ivan!',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                    ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('Active PRN: 31229084863',
                                    style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                    )),
                                   
                                ],
                            ),
                        ),
                    ]),

            )
        );
    }
}