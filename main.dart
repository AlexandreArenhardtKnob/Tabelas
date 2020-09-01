import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 void main() {
   runApp(MaterialApp(
     home: Home(),
   ));
 }

 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }

 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Uso de tabelas",textAlign: TextAlign.center,),
       ),
       body: SingleChildScrollView(
         padding: EdgeInsets.all(5),
         child: Column(
           children: [
             Table(

               columnWidths: {0:FractionColumnWidth(.2),1:FractionColumnWidth(
                   .8),},
               border: TableBorder.all(),
               defaultColumnWidth: FlexColumnWidth(),
               children: [
                 TableRow(
                     children: [
                       Container(
                         color: Colors.blueAccent,
                         padding: EdgeInsets.all(5),
                         child: Text("Nome"),
                       ),
                       Container(
                         padding: EdgeInsets.all(5),
                         child: Text("Alexandre Arenhardt Knob",style: TextStyle(fontWeight: FontWeight.bold),),
                       ),
                     ]
                 ),
                 TableRow(
                     children: [
                       Text("Telefone"),
                       Text("99973-9310"),
                     ]
                 ),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }
