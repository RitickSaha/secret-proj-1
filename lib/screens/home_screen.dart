import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pic1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.3),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Tajawal"),
                        ),
                        Text(
                          "Ascend your business with a modern mechanism of billing and maintenance...",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Tajawal"),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50)),
                        height: 80,
                        margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(20.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 40,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Mobile Number",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Tajawal",
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50)),
                        height: 80,
                        margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(20.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.group_work,
                                size: 40,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Google",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Tajawal",
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Already have an account? Login here",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontFamily: "Tajawal"),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
