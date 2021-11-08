import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page3.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('WALLPAPER'),
        leading:
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> loadingpage()));
            }, icon: Icon(Icons.not_started)),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> page3()));
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
        child: Column(
          children: [
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938393.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938392.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938390.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938389.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938370.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938369.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938334.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938332.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9932821.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938159.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9938138.jpg')),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                        child: Image.network('https://wallpapercave.com/dwp1x/wp9932802.jpg')),
                  ),



                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
