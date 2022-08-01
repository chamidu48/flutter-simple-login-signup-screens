import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ocean_translator/screens/welcomepage.dart';

import '../buildBackground.dart';
import '../button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  bool isPassHidden = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackgroundImageProvide(
        imgUrl: './assets/signupbg1.png',
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //--back ic--
              Padding(
                padding: EdgeInsets.only(top: 20,left: 20),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return welcomePage();
                      }));
                    },
                        icon: Icon(Icons.arrow_back,color: Colors.white,)
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child:Column(
                  children: [
                    //--welcome text--
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text('Create new account',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF5F5F5),
                            decoration: TextDecoration.none,
                            letterSpacing: 1.2
                        ),textAlign: TextAlign.center,
                        textScaleFactor: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?  ',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF5F5F5),
                              decoration: TextDecoration.none
                          ),textAlign: TextAlign.center,
                          textScaleFactor: 1,
                        ),
                          TextButton(
                            style: TextButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              elevation: 0,
                              padding: EdgeInsets.all(0),
                              shadowColor: Colors.transparent,
                              minimumSize: Size(30,10)
                            ),
                            onPressed: (){},
                            child: Text('Log in',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffF5F5F5),
                                  decoration: TextDecoration.underline
                              ),textAlign: TextAlign.center,
                              textScaleFactor: 1,
                            ),
                          )
                      ]),
                    ),

                    //--text input
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10),
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xffFF4299)
                          ),
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: 'Enter first name',
                              hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.05,
                                  color: Color(0xffFF4299).withOpacity(0.5)
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Color(0xffFF4299),
                              prefixIcon: Icon(Icons.person,color: Color(0xffFF4299).withOpacity(0.5),size: 16,)
                          ),
                          onTap: (){},
                        )
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10),
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xffFF4299)
                          ),
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: 'Enter last name',
                              hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.05,
                                  color: Color(0xffFF4299).withOpacity(0.5)
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Color(0xffFF4299),
                              prefixIcon: Icon(Icons.person,color: Color(0xffFF4299).withOpacity(0.5),size: 16,)
                          ),
                          onTap: (){},
                        )
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10),
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xffFF4299)
                          ),
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: 'Email address',
                              hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.05,
                                  color: Color(0xffFF4299).withOpacity(0.5)
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Color(0xffFF4299),
                              prefixIcon: Icon(Icons.email,color: Color(0xffFF4299).withOpacity(0.5),size: 16,)
                          ),
                          onTap: (){},
                        )
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10),
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xffFF4299)
                          ),
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.05,
                                  color: Color(0xffFF4299).withOpacity(0.5)
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Color(0xffFF4299),
                              prefixIcon: Icon(Icons.lock,color: Color(0xffFF4299).withOpacity(0.5),size: 16,)
                          ),
                          onTap: (){},
                        )
                    ),

                    //--buttons
                    Container(
                      margin: EdgeInsets.only(top: 20,bottom: 10),
                      child:CreateButton(text: 'Sign in', filled: true, desitnation: SignupPage()),
                    ),

                    SizedBox(height: 30),

                    //--logo
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('./assets/logo.png'),
                          )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _showHidePassword(){
    setState(() {
      isPassHidden=!isPassHidden;
    });
  }
}



