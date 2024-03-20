import 'package:flutter/material.dart';
import 'package:taskfull/config/config.dart';
import 'package:intl/intl.dart';
import 'package:taskfull/config/theme.dart';
import 'package:taskfull/widgets/button.dart';
import 'package:get/get.dart';
import 'package:taskfull/widgets/input_field.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(203, 208, 95, 100),
              size: 24,
            )),
        actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Add Task",
                style: customText().bold(24, Colors.black),
              ),
              MyInputField(
                title: "title",
                hint: "Enter your Title",
                controller: null,
                widget: null,
              ),
              MyInputField(
                title: "note",
                hint: "Enter your note",
                controller: null,
                widget: null,
              ),
              MyInputField(
                title: "Date",
                hint: DateFormat.yMd().format(_selectedDate),
                controller: null,
                widget: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
