import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TecBlance extends StatefulWidget {
  const TecBlance({Key? key}) : super(key: key);

  @override
  _TecBlanceState createState() => _TecBlanceState();
}

class _TecBlanceState extends State<TecBlance> {
  @override
  Widget build(BuildContext context) {
    
     void showBottomSheet(){
     showModalBottomSheet(context: context, builder: (context){
       return Container(
         child:Text('Hello ') ,
         height: 100,
         width: double.infinity,
         color: Colors.deepOrange,
       );
     });
    }
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            showBottomSheet();
          },
          child: Text('Show Balance'),
        ),
      ),
    );
}
}
