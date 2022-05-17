
import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/stat_update_screen.dart';
import 'package:recruitinglingo/src/ui/screens/user/my_profile_screen.dart';
import 'package:recruitinglingo/src/util/Colors.dart';
import 'package:toast/toast.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {
  int _cIndex = 0;

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    final tabs = [
      const StatUpdate(),
      Container(),
      const MyProfile()
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[_cIndex],
      bottomNavigationBar: bottomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
    );
  }
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  // Bottom Navigation Bar
  Widget bottomNavbar() => Container(
    height: 100,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _cIndex,
        elevation: 0.0,
        selectedItemColor: appColor,
        type: BottomNavigationBarType.fixed ,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(null), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined, size: 40,),
              label: ''
          )
        ],
        onTap: (index){
          _incrementTab(index);
        },
      ),
    ),
  );

  // Floating Navigation Bar
  Widget floatingActionButton() => Padding(
    padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
    child: SizedBox(
      width: 80.0,
      height: 70.0,
      child: FloatingActionButton(
        elevation: 10.0,
        onPressed:(){
        },
        tooltip: 'Add',
        backgroundColor: appColor,
        child: const Icon(Icons.add,size: 40,),
      ),
    ),
  );

}