import 'package:beamer/beamer.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'Reset Password',
              style: TextStyles.title(color: DardyColors.black, fontsize: 35),
            ),
            Text('We will send a verification code to your registered email ID.',
                style: TextStyles.subTitle(
                  color: DardyColors.grey,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'E-mail',
              style: TextStyles.subTitle(
                color: DardyColors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: DardyColors.grey, width: 0.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: DardyColors.grey),
                  hintText: "lukkce@icloud.com",
                  fillColor: Colors.white70),
            ),



            SizedBox(
              height: 30,
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
                  context.beamToNamed('/email%20sent');
                },
                child: Text(
                  'SUBMIT',
                  style: TextStyles.buttonTitle(color: DardyColors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?',style: TextStyles.subTitle(color: DardyColors.grey)),
                  TextButton(
                      onPressed: () => context.beamToNamed('/signin') ,
                      child: Text('Login',style: TextStyles.subTitle(color: Colors.blue))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
