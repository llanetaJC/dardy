import 'package:beamer/beamer.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/shared_widgets/text_widgets.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
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
              'Activate the account!',
              style: TextStyles.title(color: DardyColors.black, fontsize: 35),
            ),
            Text('Please enter the temporary code sent to your email example@gmail.com.',
                style: TextStyles.subTitle(
                  color: DardyColors.grey,
                )),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PinCodeTextField(
                // controller: _otpController,
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                obscureText: true,

                blinkWhenObscuring: true,
                animationType: AnimationType.fade,

                pinTheme: PinTheme(
                  selectedFillColor: Colors.white,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 61,
                  fieldWidth: 61,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                ),
                cursorColor: Colors.black,

                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                boxShadows: const <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],


                beforeTextPaste: (String? text) {
                  debugPrint('Allowing to paste $text');
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                }, onChanged: (String value) {

              },
              ),
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

          ],
        ),
      ),
    );
  }
}
