import 'package:flutter/material.dart';
import 'package:map_demo/homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  // void _closeDrawer() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _openDrawer,
          ),
          title: Text(' Apex Helmet'),
        ),
        drawer: Drawer(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Icon(Icons.insert_emoticon_rounded),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'AAKRITI AWASTHI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextButton(
                            child: const Text('My Profile'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Options'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Calender'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Bookmark'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Contact Us'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Settings'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Help & FAQs'),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: const Text('Sign Out'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Center(
          child: MapView(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bluetooth),
              label: 'Bluetooth',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
