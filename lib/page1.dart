

import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page2.dart';
import 'package:multipage/page3.dart';
import 'package:multipage/page4.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  int _value = 1;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
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
        title: Text('SQUID GAME'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loadingpage()));
            },
            icon: Icon(Icons.not_started)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 200,
                  width: 400,
                  child: Image.asset('images/squidface.png')),
              Center(
                  child: Text(
                '(Create an Acoount)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Your First Name";
                          } else {
                            return null;
                          }
                          ;
                        },
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'First Name',
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Your Last Name";
                          } else {
                            return null;
                          }
                          ;
                        },
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Your Email Address";
                          } else if(!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                          r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                          r"{0,253}[a-zA-Z0-9])?)*$").hasMatch(value)){
                            return ' Enter Valid Email Address';
                          }
                          else {
                            return null;
                          }
                          ;
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Your Password";
                          } else if (value.length < 8) {
                            return 'Pleace Input At lest 8 Laters And Word';
                          } else {
                            return null;
                          }
                          ;
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Your Numbers";
                          } else if (value.length < 11) {
                            return 'Pleace Input At lest 11 Numbers';
                          } else {
                            return null;
                          }
                          ;
                        },
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Number',
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField(dropdownColor: Colors.black87,
                          decoration:InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          hint: Text(
                            "Select Your Skill",style: TextStyle(
                              color: Colors.white
                          ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              print(value);
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              child: Text('Python',style: TextStyle(color: Colors.white),),
                              value: 'Python',
                            ),
                            DropdownMenuItem(
                              child: Text('Java',style: TextStyle(color: Colors.white)),
                              value: 'Java',
                            ),
                            DropdownMenuItem(
                              child: Text('C++',style: TextStyle(color: Colors.white)),
                              value: 'C++',
                            ),
                            DropdownMenuItem(
                              child: Text('Kotlin',style: TextStyle(color: Colors.white)),
                              value: 'Kotlin',
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '(Gender)',
                    style: TextStyle(color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          value = _value;
                        });
                      }),
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          value = _value;
                        });
                      }),
                  Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: validate,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(height: 100,),
                  SizedBox(
                    width: 20.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page3()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
