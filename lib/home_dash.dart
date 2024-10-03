import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Businessdetailspage9.dart';

class Home_dash extends StatefulWidget {
  String googleProfileUrl, googleorsignout;
  Home_dash();
  @override
  _State createState() => _State();
}

class _State extends State<Home_dash> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  String googleProfileUrl, googleorsignout;
  @override
  Widget build(BuildContext context) {
    void checkSignin() async {
      user = await _auth.currentUser();
      if (user != null) {
        print(user.displayName);
        setState(() {
          googleProfileUrl = user.photoUrl;
          googleorsignout = 'Sign-out\n' + user.displayName;
        });
      } else {
        setState(() {
          googleProfileUrl =
              'https://banner2.cleanpng.com/20180326/gte/kisspng-google-logo-g-suite-google-guava-google-plus-5ab8b5b15fd9f4.0166567715220545773927.jpg';
          googleorsignout = 'Google';
        });
      }
    }

    void _signout() async {
      if (_auth.currentUser() == null) {
        setState(() {
          googleProfileUrl = '';
          googleorsignout = 'No user Signed in ';
        });
      } else {
        await _auth.signOut();
        checkSignin();
      }
    }

    checkSignin();
    return Scaffold(
      backgroundColor: const Color(0xff04032b),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Welcome ${user.displayName}',
                  style: TextStyle(
                    fontFamily: 'Nudista',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Some Details of you:',
                  style: TextStyle(
                    fontFamily: 'Nudista',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: '${user.photoUrl}',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(50)),
                  margin: EdgeInsets.all(10),
                  height: 60,
                  width: 300,
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Businessdetails(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Goto home",
                          style: TextStyle(
                            fontSize: 20,
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
                  margin: EdgeInsets.all(10),
                  height: 60,
                  width: 300,
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    onPressed: () async {
                      final FirebaseUser user = await _auth.currentUser();
                      final String uid = user.uid;
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(uid + ' has successfully signed out.'),
                      ));
                      _signout();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign Out",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Tajawal",
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
