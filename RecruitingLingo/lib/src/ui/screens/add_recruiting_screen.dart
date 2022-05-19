import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/stat_update_screen.dart';

class AddRecruiting extends StatefulWidget {
  const AddRecruiting({Key? key}) : super(key: key);

  @override
  State<AddRecruiting> createState() => _AddRecruitingState();
}

class _AddRecruitingState extends State<AddRecruiting> {
  var _listItems = [];
  List<String> titles = [
    "Introductory Message",
    "Stat Update",
    "Camp Invitation Request",
    "Spring AUU Schedule",
    "Summer AUU Schedule",
    "High School Announcement"
  ];
  final GlobalKey<AnimatedListState> keyList = GlobalKey();

  void _loadItems() {
    var future = Future(() {});
    for (var i = 0; i < titles.length; i++) {
      future = future.then((_) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          _listItems.add(titles[i]);
          keyList.currentState?.insertItem(i);
        });
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Featured Messages",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StatUpdate(1)),
          );
        },
        child: Container(
          height: double.infinity,
          color: Colors.white,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: AnimatedList(
            key: keyList,
            itemBuilder: (buildContext, index, animation) {
              return SlideTransition(
                position: CurvedAnimation(
                  curve: Curves.easeOut,
                  parent: animation,
                ).drive((Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: const Offset(0, 0),
                ))),
                child: Container(
                  margin: const EdgeInsets.all(6.0),
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: Center(child: Text(_listItems[index])),
                ),
              );
            },
            initialItemCount: _listItems.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(5),
            scrollDirection: Axis.vertical,
          ),
        ),
      ),
    );
  }
}
