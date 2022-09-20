import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Text('Welcome!',
                style: TextStyles.subTitle(
                  color: DardyColors.black,
                )),
            Text(
              'Login',
              style: TextStyles.title(color: DardyColors.black, fontsize: 35),
            ),

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

            //  password
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: TextStyles.subTitle(
                color: DardyColors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: DardyColors.grey, width: 0.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: DardyColors.grey),
                  hintText: "*********",
                  fillColor: Colors.white70),
            ),

            //  forgot password
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?',
                      style: TextStyles.subTitle(
                          color: DardyColors.grey.withOpacity(0.8)))),
            ),

            SizedBox(
              height: 10,
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
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: TextStyles.buttonTitle(color: DardyColors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Create an account',style: TextStyles.subTitle(color: DardyColors.grey)),
            )
          ],
        ),
      ),
    );
  }
}
