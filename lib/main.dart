import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  List<String> images = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  List<String> imageText = [
    'A forgot password screen',
    'This is the otp verification screen',
    ' This is the final change your password screen'
  ];

  int i = 0;

  void nextImage() {
    setState(() {
      i == imageText.length - 1 ? i = 0 : i++;
    });
  }

  void previousImage() {
    setState(() {
      i == 0 ? i = imageText.length - 1 : i--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          title: Text('Portfolio'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Password Module',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                child: ListTile(
                  title: Container(
                    height: 400.0,
                    width: 200.0,
                    child: Image.asset(
                      images[i],
                      fit: BoxFit.contain,
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      imageText[i],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      previousImage();
                    },
                    disabledColor: Colors.grey,
                    color: Colors.lightBlue.shade300,
                    splashColor: Colors.lightBlue.shade900,
                    child: Text(
                      'Previous Image',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      nextImage();
                    },
                    color: Colors.lightBlue.shade300,
                    splashColor: Colors.lightBlue.shade900,
                    child: Text(
                      'Next Image',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
