import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:taskfull/config/config.dart';
import 'package:taskfull/config/theme.dart';

class CreateButton extends StatelessWidget {
  final String lebel;
  final Function()? onTap;

  const CreateButton({Key? key, required this.lebel, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          width: 600,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bwhite,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              lebel,
              style: CustomFontStyle().bold(20, kblue),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
