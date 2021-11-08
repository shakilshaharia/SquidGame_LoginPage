import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page3.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
            () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => page3()),
                (route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SIGN UP'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loadingpage()));
            },
            icon: Icon(Icons.not_started)),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> page1()));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      backgroundColor: Colors.white12,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'SIGN UP SUCCESSFULLY',
            style:
                TextStyle(fontSize: 22, decoration: TextDecoration.underline,
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180,left: 180),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.red,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Redirecting to Login Page',
                  style: TextStyle(fontSize: 22,color: Colors.white,),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 180,left: 180),
            child: LinearProgressIndicator(
              backgroundColor: Colors.red,
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}
