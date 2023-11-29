
import 'package:flutter/material.dart';
import 'package:reachout_versiontwodotzero/constants/color.dart';

class CustomElevatedButton extends StatelessWidget {
  final String bText;
  final Function() onPress;
  final Color bColor;
  const CustomElevatedButton({super.key,
  required this.bText,
  required this.onPress,
  required this.bColor});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight*0.06,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: bColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          )
      ),
        child: Text(
            bText,
            style:  const TextStyle(
              fontSize:16,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
                color: Colors.white)),),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String bText;
  final VoidCallback onPress;
  final Color bColor;
  final double  oHeight;
  final double  oWidth;
  const CustomOutlinedButton({super.key,
    required this.bText,
    required this.onPress,
    required this.bColor,
    required this.oHeight,
    required this.oWidth
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
       height: oHeight,
       width: oWidth,
      child: 
       OutlinedButton(
                    onPressed:onPress,
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side:  BorderSide(
                          color: bColor,
                        )),
                    child:  Text(
                      bText,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )
    );
  }
}