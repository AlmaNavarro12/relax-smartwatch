
import 'package:flutter/material.dart';
import 'package:relax_smatwach/pages/ambient_screen.dart';
import 'package:relax_smatwach/pages/relax_menu.dart';
import 'package:wear/wear.dart';

class NameScreen extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  const NameScreen(this.screenHeight, this.screenWidth, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      builder: (context, mode, child) => mode == WearMode.active
          ? NameScreenUI(screenHeight, screenWidth)
          : const AmbientWatchFace(),
    );
  }
}

class NameScreenUI extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  NameScreenUI(this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/outline_arrow.png',scale: 1.8,),
                    const SizedBox(width: 5),
                    const Text('Back', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'FlutterOS',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[700],
                ),
              ),
              const SizedBox(height: 5,),
              ElevatedButton(
                onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context){
                  return RelaxView(screenHeight, screenWidth);
                  }));
                },
                  child: const Text(
                  'NEXT',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
} 
