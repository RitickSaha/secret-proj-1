import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home_dash.dart';

class LoginAuth extends StatefulWidget {
  @override
  _LoginAuthState createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();
  String googleProfileUrl, googleorsignout;

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

  @override
  Widget build(BuildContext context) {
    checkSignin();
    void _signInWithGoogle() async {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final FirebaseUser user =
          (await _auth.signInWithCredential(credential)).user;
      final FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);
      setState(() {
        if (user != null) {
          setState(() {
            googleProfileUrl = user.photoUrl;
            googleorsignout = 'Sign Out ' + user.email;
          });
        }
      });
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

    if (user != null) {
return Home_dash();
    }
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
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
                            onPressed: () async {
                              final FirebaseUser user =
                                  await _auth.currentUser();
                              if (user == null) {
                                Scaffold.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('No one has signed in.'),
                                ));
                                return;
                              }
                              _signout();
                              final String uid = user.uid;
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content:
                                    Text(uid + ' has successfully signed out.'),
                              ));
                            },
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
                            onPressed: () async {
                              if (user == null) {
                                _signInWithGoogle();
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: CachedNetworkImage(
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    imageUrl: '$googleProfileUrl',
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                  radius: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "$googleorsignout",
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
      ),
    );
  }
}
