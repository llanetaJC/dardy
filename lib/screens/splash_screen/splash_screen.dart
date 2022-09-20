import 'package:animate_do/animate_do.dart';
import 'package:beamer/beamer.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void navigation() async{
    await Future.delayed(const Duration(seconds: 3), () {
      context.beamToNamed('/welcome');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    navigation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(splashScreenBG)
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomIn(
              duration: Duration(seconds: 1),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage(splashScreenIconWithTitle)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
