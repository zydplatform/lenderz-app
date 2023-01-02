import 'package:flutter/material.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import '../models/target_list.dart';
import '../widgets/appbar.dart';
import 'package:palend/classes/targetlist_details.dart';

import 'package:palend/classes/language_constants.dart';

import '../widgets/targetinvest_widget.dart';
import 'package:palend/widgets/step_wizard.dart';

class TargetInvestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<TargetInvestScreen> {
  final listKey = GlobalKey<AnimatedListState>();
  final List<ListItem> items = List.from(listItems);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        height: 50,
        color: Palette.mybuttonColors,
        child: Text(''),
      ),
      
      body: 
      //MyStepWizard(),
          
        AnimatedList(
        key: listKey,
        initialItemCount: items.length,
        itemBuilder: ((context, index, animation) => ListItemWidget(
              item: items[index],
              animation: animation,
              //  onClicked: () {},
            )),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next'),
        elevation: 20,
        backgroundColor: Palette.mybuttonColors,
        //Icon(Icons.arrow_forward_sharp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
      ),
      
    );
  }
}
