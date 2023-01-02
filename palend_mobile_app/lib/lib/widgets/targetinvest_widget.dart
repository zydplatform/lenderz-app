import 'package:flutter/material.dart';
import 'package:palend/classes/targetlist_details.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import 'package:palend/widgets/checkbox_widget.dart';

import 'package:palend/widgets/button_raised.dart';
import '../models/target_list.dart';

class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final Animation<double> animation;
  
  //final VoidCallback? onClicked;

  const ListItemWidget({
    required this.item,
    required this.animation,
    //required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizeTransition(
        sizeFactor: animation,
        child: buildItem(),
      );

  Widget buildItem() => Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
        ),
    ],
          borderRadius: BorderRadius.circular(12),
          color: Palette.myColors.shade800,
          

        ),
        child: ListTile(
          
          contentPadding: EdgeInsets.all(12),
          leading: Text(item.loanAmount, style: TextStyle(fontSize: 15, color: Colors.black),),
          
          title: Text(
            item.currency,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          subtitle: Text(
            item.profit,
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          
          trailing: Column(
           
            children:[
            //Text(item.profit, style: TextStyle(fontSize: 20, color: Colors.white),),
            CheckboxWidget(),
            //MyButtonsWidget()

            ]
          
          ),
          
        ),
 
  
      );
}
