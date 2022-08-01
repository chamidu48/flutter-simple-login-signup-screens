import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ocean_translator/screens/loginpage.dart';
import 'package:ocean_translator/screens/signuppage.dart';

import '../button.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              //--bg gradient
              Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                  Colors.black.withOpacity(0.5),
                  Color(0xffF70776).withOpacity(0.1),
                  ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)
                )
              ),
              //--bg image
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('./assets/welcomebg1.png'),
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.noRepeat,
                    )
                ),
              ),
              //--content
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //--logo
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('./assets/logo.png'),
                          )
                      ),
                    ),
                    //--buttons
                    Container(
                      child: Column(
                        children: [
                          CreateButton(text: 'Log in', filled: true, desitnation: loginPage()),
                          Container(
                              margin: EdgeInsets.only(top: 15),
                              child: CreateButton(text: 'Sign up', filled: false, desitnation: SignupPage())),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Hfrfvr vj sfs sfdgfgivje jvivj veef frfr rvrefjj mzvidfjv vfbdf vjjfvo bdjvifv fio fv dj0v erv  vodv',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF5F5F5),
                                  decoration: TextDecoration.none
                              ),textAlign: TextAlign.center,
                              textScaleFactor: 1,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
        );
  }
}



