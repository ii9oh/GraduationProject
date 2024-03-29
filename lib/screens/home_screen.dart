import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskfull/config/config.dart';
import 'package:taskfull/config/theme.dart';
import 'package:taskfull/screens/add_project.dart';
import 'package:taskfull/screens/add_task.dart';
import 'package:taskfull/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 53, 49, 100),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Color.fromRGBO(203, 208, 95, 100),
              iconSize: 24,
              alignment: Alignment.centerLeft),
          actions: [
            Icon(
              Icons.search_outlined,
              color: Color.fromRGBO(203, 208, 95, 100),
              size: 24,
            ),

            /*CircleAvatar(
              backgroundImage: AssetImage('images/Vector.png'),
            ),*/
            SizedBox(
              width: 20,
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(35, 53, 49, 100),
        iconSize: 30,
        selectedItemColor: kgreen,
        unselectedItemColor: kgreen,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.home_outlined,
                size: 32, color: Color.fromRGBO(203, 208, 95, 100)),
            label: "Home",
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.create_outlined,
                size: 50, color: Color.fromRGBO(203, 208, 95, 100)),
            label: "create",
            
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined,
                size: 32, color: Color.fromRGBO(203, 208, 95, 100)),
            label: "note",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,
                size: 32, color: Color.fromRGBO(203, 208, 95, 100)),
            label: "person",
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            //fisrt in the page
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: CustomFontStyle().normal(23, bwhite),
                      ),
                      Text(
                        "Ruqaia Alghuwaizi",
                        style: CustomFontStyle().bold(24, bwhite),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "My Task",
                          style: CustomFontStyle().bold(24, Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    alignment: Alignment.center,
                    child: Column(children: [
                      MyButton(
                        lebel: "+",
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddTask())),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            // all - today -finshed Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    "All",
                    style: CustomFontStyle().normal(20, Colors.black),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  Text(
                    "Today",
                    style: CustomFontStyle().normal(20, Colors.black),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  Text(
                    "Finshed",
                    style: CustomFontStyle().normal(20, Colors.black),
                  ),
                ],
              ),
            ),

            // task container
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 200,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                            width: 148,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(203, 208, 95, 100),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "task Name",
                                style: customText().bold(24, kblue),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ),
            ),

            //my projact
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My Project",
                    style: CustomFontStyle().bold(24, Colors.black),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Column(children: [
                      MyButton(
                        lebel: "+",
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddProjects())),
                      ),
                    ]),
                  ),
                )
              ],
            ),
            //project contaier
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 235, 224, 100),
                            borderRadius: BorderRadius.circular(50)),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project name",
                                style: CustomFontStyle().bold(20, kblue),
                              ),
                              Text(
                                "start",
                                style: CustomFontStyle().bold(13, kblue),
                              )
                            ],
                          ),
                          leading: Icon(
                            Icons.note,
                          ),
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
