import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess/Auth/widgets/errorMessage.dart';
import '../Screens/MainScreen.dart';
import 'fireAuth.dart';
import 'login.dart';

// Email verification through Firebase

class VerifyEmail extends StatefulWidget {
  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  User user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            width: 200.w,
            child: Text(
              'An email has just been sent to you, Click the link provided to complete registration',
              overflow: TextOverflow.clip,
              style: TextStyle(color: Colors.white54, fontSize: 16),
              textAlign: TextAlign.center,
            ),
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
            onPressed: () async {
              await user.reload();
              user = await FirebaseAuth.instance.currentUser!;
              if (user.emailVerified) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainScreen(user: user,)),
                );
              } else {
                errorMessage.showError("Please verify your email first!");
              }
            },
            child: Text(
              'Continue',
              style: TextStyle(color: Color(0xFFFFFFFF)),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'Assets/Images/check.png',
              height: 75.h,
              color: Color(0xFF4F5B62),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an acount?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text("Log In"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
