import 'package:flutter/material.dart';
import 'package:taskfull/config/config.dart';
import 'package:taskfull/config/theme.dart';
import 'package:taskfull/models/note.dart';

class MyNotes extends StatefulWidget {
  const MyNotes({Key? key}) : super(key: key);

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
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search notes...",
                hintStyle: TextStyle(color: bwhite),
                prefixIcon: Icon(
                  Icons.search,
                  color: kgreen,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: sampleNote.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: word,
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                            text: "${sampleNote[index].title} :\n",
                            style: CustomFontStyle().bold(20, bwhite),
                            children: [
                              TextSpan(
                                text: "${sampleNote[index].content} :\n",
                                style: CustomFontStyle().normal(20, bwhite),
                              )
                            ]),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: kgreen,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10,
        backgroundColor: Color(0x61233531),
        child: const Icon(
          Icons.add,
          size: 38,
        ),
      ),
    );
  }
}
