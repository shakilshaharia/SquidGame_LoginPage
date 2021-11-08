import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page6.dart';

class page5 extends StatefulWidget {
  const page5({Key? key}) : super(key: key);

  @override
  _page5State createState() => _page5State();
}

class _page5State extends State<page5> {

  GlobalKey<FormState> formkey3 = GlobalKey<FormState>();

  void validate() {
    if (formkey3.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page6()));
      print('Ok');
    } else {
      print('Error');
    }
  }


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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Have You Lost Your Password?',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Text(
            'Enter Your Email Address.',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Form(
            key: formkey3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.white,
                validator: (value1){
                  if(
                  value1!.isEmpty){
                    return "Enter Your Login Email";
                  } else if(!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                  r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                  r"{0,253}[a-zA-Z0-9])?)*$").hasMatch(value1)){
                    return ' Enter Valid Email Address';
                  }
                  else{
                    return null;
                  }
                },
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 15.0),
                  prefixIcon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: Colors.white, style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 35,
            width: 110,
            child: FlatButton(
              onPressed: validate,
              child: Text(
                'Submit',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),

        ],
      ) ,
    );
  }
}
