import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page2.dart';
import 'package:multipage/page4.dart';
import 'package:multipage/page5.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {

  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();

  void validate(){
    if( formkey2.currentState!.validate()){
      print('Every Things ok');
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => page4()));
    }
    else{
      print('Error');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LOGIN'),
        leading:
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> loadingpage()));
        }, icon: Icon(Icons.not_started)),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> page1() ));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
        backgroundColor: Colors.white12,
        body: Center(
          child: SingleChildScrollView(
            controller: ScrollController(keepScrollOffset: true,),
            child: Column(
              children: [
                Image.asset('images/Squid.png'),
                Positioned(
                  bottom: 20,
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Form(
                        key: formkey2,
                        child: Column(
                          children: [
                            Padding(
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (value1){
                                  if(
                                  value1!.isEmpty){
                                    return "Enter Your Password";
                                  }else if (
                                  value1.length < 8){
                                    return ' Enter Your 8 Digit Password  ';
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
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
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 40,
                              width: 150,
                              child: FlatButton(
                                onPressed: validate,
                                child: Text(
                                  'Login',
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
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Don\'t Have an Account?',
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 40,
                              width: 150,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => page1()));
                                },
                                child: Text(
                                  'Sign Up',
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
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 35,
                              width: 200,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => page5()));
                                },
                                child: Text(
                                  'Forget Password',
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
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
