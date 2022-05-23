import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'aboutpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: "Profile",
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "DevTajpuriya",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
              ),
              ListTile(
                leading: Icon(Icons.golf_course_sharp),
                title: Text("Courses"),
              ),
              ListTile(
                leading: Icon(Icons.app_blocking_sharp),
                title: Text("Blogs"),
              ),
              ListTile(
                leading: Icon(Icons.more),
                title: Text("More"),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.join_full_outlined,
                  ),
                ),
                title: Text("Join"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage("")),
                  );
                },
                icon: const Icon(Icons.info_outline))
          ],
          centerTitle: true,
          title: const Text(
            "My Profile",
            style: TextStyle(
              fontSize: 35.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    children: const <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 60,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Dev Tajpuriya",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "App Developer",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "My name is Dev Tajpuriaya. I am from Damak. I am web plus Flutter App Developer.",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Social Links",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        openurl();
                      },
                      color: Colors.blue,
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                    ),
                    IconButton(
                      onPressed: () {
                        openurl1();
                      },
                      color: Colors.blue,
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                    ),
                    IconButton(
                      onPressed: () {
                        openurl2();
                      },
                      color: Colors.green,
                      icon: const FaIcon(FontAwesomeIcons.whatsapp),
                    ),
                    IconButton(
                      onPressed: () {
                        openurl3();
                      },
                      color: Colors.red,
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Skills",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Card(
                elevation: 3.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/th.jpg'),
                  ),
                  title: Text("Wev Development"),
                  subtitle: Text(
                    "HTML, CSS, JavaScript",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              const Card(
                elevation: 3.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/OIP.jpg'),
                  ),
                  title: Text("App Development"),
                  subtitle: Text(
                    "C Programming, Python, Java",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              const Card(
                elevation: 3.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/gd.jpg'),
                  ),
                  title: Text("Graphic Designing"),
                  subtitle: Text(
                    "Photoshop, CorelDraw, Ai(Adobe Illustrator)",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }

  title(String s) {}
}

void openurl() {
  String urll = "https://www.facebook.com/tajdev.com.np";
  launch(urll);
}

void openurl1() {
  String urll = "https://twitter.com/DevTajpuriya5";
  launch(urll);
}

void openurl2() {
  String urll = "https://web.whatsapp.com/";
  launch(urll);
}

void openurl3() {
  String urll = "https://instagram.com/iamdevtaj/";
  launch(urll);
}
