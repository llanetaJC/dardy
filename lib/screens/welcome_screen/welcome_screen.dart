import 'package:animate_do/animate_do.dart';
import 'package:beamer/beamer.dart';
import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:dardy/screens/welcome_screen/widgets/onboarding_content.dart';
import 'package:dardy/screens/welcome_screen/widgets/onboarding_image.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final controller = LiquidController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        LiquidSwipe.builder(
          enableLoop: false,
          liquidController: controller,
          onPageChangeCallback: (index) {
            setState(() => isLastPage = index == 1);
          },
          disableUserGesture: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return DecoratedBox(
              decoration:  BoxDecoration(
                color: DardyColors.white,
                image: const DecorationImage(
                  image: const AssetImage(welcomeScreenBG),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(

                children: <Widget>[

                  Container(
                    height: 350,
                    margin: const EdgeInsets.only(top: 200),
                    child:
                        // OnboardingImage(image: 'assets/welcome/welcome1.png'),
                    _buildImage(index),
                  ),

                  const SizedBox(height: 75,),
                  _buildTextBody(index),
                ],
              ),
            );
          },
        ),
        Positioned(
          bottom: 23,
          left: 0,
          right: 0,
          child: isLastPage
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 149,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextButton(

                        child: Text('Login',style: TextStyle(color: DardyColors.green)),
                        onPressed: () {
                          context.beamToNamed('/signin');
                        },
                      ),
                    ),
                  ],
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child:  Text('Skip',style: TextStyle(color: DardyColors.grey)),
                        onPressed: () {
                          context.beamToNamed('/signin');
                        },
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: controller.currentPage,
                        count: 2,
                        effect: WormEffect(
                          spacing: 16,
                          dotHeight: 10,
                          dotWidth: 40,
                          dotColor: DardyColors.grey.withOpacity(0.3),
                          activeDotColor: DardyColors.green,

                        ),
                      ),
                      TextButton(
                        child:  Text('Next',style: TextStyle(color: DardyColors.green)),
                        onPressed: () {
                          final page = controller.currentPage + 1;
                          controller.animateToPage(
                            page: page > 1 ? 0 : page,
                            duration: 300,
                          );
                        },
                      ),
                    ],
                  ),
              ),
        ),
      ],
    ));
  }


  SliderContent _buildTextBody(int index) {
    switch (index) {
      case 0:
        return const SliderContent(
          title: 'Fresh and Tasty',
          body: 'From its medieval origins to the digital era, learn everything.',
        );
      default:
        return const SliderContent(
          title: 'Hundreds of Points and Reward',
          body: 'From its medieval origins to the digital era, learn everything.',
        );
    }
  }




  OnboardingImage _buildImage(int index) {
    switch (index) {
      case 0:
        return const OnboardingImage(image: welcomeScreenOne);
      default:
        return const OnboardingImage(image: welcomeScreenTwo);
    }
  }
}
