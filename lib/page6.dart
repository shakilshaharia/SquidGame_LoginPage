import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  _page6State createState() => _page6State();
}

class _page6State extends State<page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FORGET PASSWORD'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loadingpage()));
            },
            icon: Icon(Icons.not_started)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      backgroundColor: Colors.white12,
      body: Column(
        children: [
          Expanded(
              child: Image.asset('images/loading.gif')),
          SizedBox(height: 150,
            width: 500,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              child: Center(
                child: Text(
                  '''    An Email Has Been Sent to Your
  Account Please Check Your Email 
      For Resetting Your Password''',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
              child: Image.asset('images/loading.gif')),
        ],
      ),
    );
  }
}
