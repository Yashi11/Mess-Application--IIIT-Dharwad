import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess/widgets/DropDown.dart';

class MenuMPage extends StatefulWidget {
  static const routeName = '/menu';
  MenuMPage({Key? key}) : super(key: key);
  int index = 0;
  @override
  State<MenuMPage> createState() => _MenuMPageState();
}

class _MenuMPageState extends State<MenuMPage> {
  String? categoryValue;
  final List<String> mealList = [
    'Breakfast',
    'Lunch',
    'Evening Snacks',
    'Dinner',
  ];
  final List<String> dayList = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Everyday'
  ];
  String? selectedDay;
  String? selectedMeal;
  final _foodTextController = TextEditingController();

  void handleDay(value) {
    selectedDay = value;
  }

  void handleMeal(value) {
    selectedMeal = value;
  }

  // void _submitToDB() async {
  //   final food = _foodTextController.text;

  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(color: Color.fromARGB(255, 255, 255, 255)),
          Container(
            width: 250.w,
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Select a Meal",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropDown(
                  items: mealList,
                  handleDropDown: handleMeal,
                  text: "Select a Meal",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Select Day",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropDown(
                  items: dayList,
                  handleDropDown: handleDay,
                  text: "Select Day",
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3F5C94),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: Text("Change Menu"),
                  onPressed: () {
                    if (selectedDay != null && selectedMeal != null) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: AlertDialog(
                                icon: Icon(
                                  Icons.restaurant_menu,
                                ),
                                elevation: 10,
//                                 titlePadding: 40,
//                                 contentPadding: 20,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                title: Text("Change Required Menu To:"),
                                content: Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.0, right: 30.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Add New Menu",
                                      border: InputBorder.none,
                                    ),
                                    maxLines: 8,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF3F5C94),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Close",
                                      style:
                                          TextStyle(color: Color(0xFFFFFFFF)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Save",
                                      style:
                                          TextStyle(color: Color(0xFFFFFFFF)),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF3F5C94),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}