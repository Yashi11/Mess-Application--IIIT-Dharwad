// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess/widgets/DropDown.dart';

class Complaint extends StatefulWidget {
  static const routeName = '/complaint';

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  final complaintController = TextEditingController();
  String complaint = "";
  String type = "";

  @override
  void initState() {
    super.initState();
  }

  final curUser = FirebaseAuth.instance.currentUser;

  void _submitToDB() async {
    await FirebaseFirestore.instance.collection('complaints').add(
      {'complaint': complaint, 'type': type, 'uid': curUser!.uid},
    );
  }

  final List<String> complaintTypeList = [
    'Food quality issue',
    'Food serving issue',
    'Cleanliness issue',
    'Other'
  ];

  String complaintType = "Other";
  void handleComplaint(value) {
    complaintType = value;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Divider(color: Color.fromARGB(255, 255, 255, 255)),
            Container(
              width: 280.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Complaint",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropDown(
                    items: complaintTypeList,
                    handleDropDown: handleComplaint,
                    text: "Select Complaint",
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Write a detailed explanation",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    //height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white),
                    //color: Colors.white,
                    child: TextField(
                      style: TextStyle(fontFamily: ''),
                      controller: complaintController,
                      maxLines: 8,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        hintText: 'Enter a full query',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3F5C94),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    onPressed: () async {
                      complaint = complaintController.text;
                      type = complaintType;

                      _submitToDB();
                      complaintController.clear();
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}