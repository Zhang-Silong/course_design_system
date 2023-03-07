import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CourseDesignSystem',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainWidget()
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  int _currentIndex = 0;

  Widget _switchPage() {
    if (_currentIndex == 0) {
      return const HomePage();
    } else if (_currentIndex == 1) {
      return const CoursePage();
    } else {
      return const UserPage();
    }
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(title: const Text("课程设计选题系统")),
        body: _switchPage(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "课程"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的")
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const Center(
        child: Text("首页", textScaleFactor: 5)
      );
}
class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const Center(
          child: Text("课程", textScaleFactor: 5)
      );
}
class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      Container(
        color: Colors.white10,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ClipOval(
                  child: Image.asset("images/test_image.png", width: 100),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.business),
                              Icon(Icons.map),
                              Icon(Icons.settings),
                              Icon(Icons.expand),
                              Icon(Icons.lock)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.business),
                              Icon(Icons.map),
                              Icon(Icons.settings),
                              Icon(Icons.expand),
                              Icon(Icons.lock)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.business),
                              Icon(Icons.map),
                              Icon(Icons.settings),
                              Icon(Icons.expand),
                              Icon(Icons.lock)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              )
            ],
          ),
        ),
      );
}

