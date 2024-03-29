import 'package:flutter/material.dart';
import 'package:taskfull/config/config.dart';
import 'package:taskfull/config/theme.dart';

class MyNotes extends StatefulWidget {
  const MyNotes({super.key});

  @override
  State<MyNotes> createState() => _MyNotesState();
}

class _MyNotesState extends State<MyNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notes",
                  style: customText().bold(24, bwhite),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sort,
                      color: bwhite,
                    ))
              ],
            ),
            TextField(
              decoration: InputDecoration(hintText: "Search notes..."),
            )
          ],
        ),
      ),
    );
  }
}
