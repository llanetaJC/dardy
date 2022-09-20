import 'package:beamer/beamer.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';

class EmailSentScreen extends StatefulWidget {
  const EmailSentScreen({Key? key}) : super(key: key);

  @override
  State<EmailSentScreen> createState() => _EmailSentScreenState();
}

class _EmailSentScreenState extends State<EmailSentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: DardyColors.white,
          image: DecorationImage(
              image: AssetImage(welcomeScreenBG), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(child: Image.asset(emailsentIcon),),
            SizedBox(height: 30,),
            Text(
              'Check your email',
              style: TextStyles.title(color: DardyColors.black, fontsize: 35),
            ),
            SizedBox(height: 10,),
            Text('We have sent a password  recovery instructions to your email',
                style: TextStyles.subTitle(
                  color: DardyColors.grey,
                ),textAlign: TextAlign.center),
            SizedBox(
              height: 20,
            ),





            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: DardyColors.authenticationButton,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {
                  context.beamToNamed('/verify%20code');

                },
                child: Text(
                  'NEXT',
                  style: TextStyles.buttonTitle(color: DardyColors.white),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
