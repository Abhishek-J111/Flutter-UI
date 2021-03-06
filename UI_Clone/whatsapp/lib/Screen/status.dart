import 'package:flutter/material.dart';
import 'package:whatsapp/Model/call.dart';
import '../Widgets/wcard.dart';
class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcards("MyStatus", "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", "Tap to add Status")
        ,Divider(),
        Heading("Recent Updates"),
        Wcards(callData[0].name, callData[0].imageUrl, callData[0].time),
        Wcards(callData[1].name, callData[1].imageUrl, callData[1].time),
        Heading('Today'),
        Wcards(callData[2].name, callData[2].imageUrl, callData[2].time),
        Wcards(callData[3].name, callData[3].imageUrl, callData[3].time),
        Wcards(callData[4].name, callData[4].imageUrl, callData[4].time),
      ],
      
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left:5.0,top:5.0),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
        ),
      ),
      
      
    );
  }
}