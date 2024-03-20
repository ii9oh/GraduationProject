import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:taskfull/config/config.dart';
import 'package:taskfull/config/theme.dart';

class MyButton extends StatelessWidget {
  final String lebel;
  final Function()? onTap;

  const MyButton({Key? key, required this.lebel, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kgreen,
        ),
        child: Text(
          lebel,
          style: CustomFontStyle().bold(50, kblue),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
