import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/Examples/star_rating.dart';
import 'package:flutter_custom_widget/Stuffs/stuff.dart';
import 'package:get/get.dart';

import 'custom_models/widget_models.dart';

void main(){
  runApp(const MyCustomWidget());
}

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({Key? key}) : super(key: key);

  @override
  State<MyCustomWidget> createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {

  @override
  Widget build(BuildContext context) {

    return const GetMaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              const Center(child: Text(
                'Custom Widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Stuff.customWidgets.length,
                  itemBuilder: (context,index){
                    return _listItem(customWidget: Stuff.customWidgets[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listItem({required CustomWidget customWidget}){
    return InkWell(
      onTap: (){
        Get.to(() => StarRatingExample(star: 4));
      },
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.fromLTRB(0,3,10,3),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade200),
                        bottom: BorderSide(color: Colors.grey.shade200),
                        left: BorderSide(color: Colors.grey.shade200),
                      )
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(customWidget.name,
                          style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text(customWidget.description,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 25, 0),
                  child: const Text(
                    'View example',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.black26),
            ),
            padding: EdgeInsets.all(5),
            child: Icon(CupertinoIcons.arrow_right, size: 10,),
          )
        ],
      ),
    );
  }
}

