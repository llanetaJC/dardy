import 'package:dardy/other%20components/project_images.dart';
import 'package:dardy/other%20components/style/colors.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);


  Widget topRow(BuildContext context){
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage(jollibeeImage), fit: BoxFit.fill)),
          ),
          Align(alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 35),
                decoration: BoxDecoration(color: DardyColors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      )
                    ]
                ),

                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                        image: DecorationImage(image: AssetImage(jollibeeLogo))
                    ),
                  ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          topRow(context)
        ],
      ),
    );
  }
}
