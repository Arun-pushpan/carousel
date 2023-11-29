
import 'package:flutter/material.dart';
import 'package:reachout_versiontwodotzero/constants/color.dart';

import '../../constants/texts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String lText;
  final Icon? tIcon;
  final IconButton? sIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyBoardType;

  const CustomTextField({super.key,
    required this.controller,
    required this.lText,
     this.tIcon,
    this.sIcon,
    this.validator,
    this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      textInputAction: TextInputAction.next,
      autofocus: true,
      cursorColor:Colours.rGreen ,
      style: textFieldTypingTextSize,
      controller: controller,
      keyboardType:keyBoardType ,
      decoration: InputDecoration(
        labelText: lText,
        labelStyle: textFieldLabelTextSize,
        prefixIcon: tIcon,
        suffixIcon: sIcon,
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colours.rGray,width: 2.0)
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff8EC987),width: 2.0),
        ),
        border: const UnderlineInputBorder(),
      ),
      validator: validator, // Pass the validator function here
    );
  }
}
