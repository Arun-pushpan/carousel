import 'package:flutter/material.dart';
import 'package:reachout_versiontwodotzero/constants/color.dart';

class ReachOutText extends StatelessWidget {
  final String rText;
  final double? rSize;
  const ReachOutText({super.key,
    required this.rText,
     this.rSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      rText,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white60,
        fontSize: rSize, fontFamily: "Poppins",
        fontWeight: FontWeight.w400
      ) ,);
  }
}
