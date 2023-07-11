import 'package:flutter/material.dart';
import 'package:relax_smatwach/pages/name_screen.dart';
import 'package:wear/wear.dart';
import 'utils.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WatchShape(
        builder: (context, shape, child) {
          var screenSize = MediaQuery.of(context).size;
          // ignore: deprecated_member_use
          final shape = InheritedShape.of(context).shape;
          if (shape == WearShape.round) {
            
            screenSize = Size(boxInsetLength(screenSize.width / 2),
                boxInsetLength(screenSize.height / 2));
          }
          var screenHeight = screenSize.height;
          var screenWidth = screenSize.width;
          return Center(
            child: Container(
              color: Colors.white,
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const FlutterLogo(size: 90),
                  const SizedBox(height: 10),
                  const Text(
                      'Alma Delia Navarro Gonzalez',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    //highlightColor: Colors.blue[900],
                    // elevation: 6.0,
                    child: const Text(
                      'START',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                     /** Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return NameScreen(screenHeight, screenWidth);
                      })); */
                    },
                    // shape: RoundedRectangleBorder(
                     // borderRadius: BorderRadius.circular(10),
                    )
                    //color: Colors.blue[400]
                ],
              ),
            ),
          );
        },
      ),
    );
  }
} 