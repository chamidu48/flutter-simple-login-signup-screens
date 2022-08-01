import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocean_translator/screens/welcomepage.dart';

import '../buildBackground.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  bool isLoading = false;
  bool isPassHidden = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackgroundImageProvide(
        imgUrl: './assets/loginbg1.png',
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                      child: Text('Welcome back!',
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
                      child: Text('Use your username and password to log in',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF5F5F5),
                            decoration: TextDecoration.none
                        ),textAlign: TextAlign.center,
                        textScaleFactor: 1,
                      ),
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
                              hintText: 'Username or Email address',
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
                        margin: EdgeInsets.only(bottom: 10),
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          obscureText: isPassHidden,
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
                              prefixIcon: Icon(Icons.lock,color: Color(0xffFF4299).withOpacity(0.5),size: 16,),
                            suffixIcon: InkWell(
                              onTap: _showHidePassword,
                                child: Icon(isPassHidden?CupertinoIcons.eye_fill:CupertinoIcons.eye_slash_fill,
                                  color: Color(0xffFF4299).withOpacity(0.5),size: 16,))
                          ),
                          onTap: (){},
                        )
                    ),
                    //--forgot--
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 42),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text('Forgot password?',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF5F5F5),
                            decoration: TextDecoration.underline
                        ),textAlign: TextAlign.center,
                        textScaleFactor: 1,
                      ),
                    ),
                    //--buttons
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child:Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffC3195D),
                                  Color(0xffFF4299),
                                ]
                            ),
                          ),
                          child:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                onPrimary: Color(0xffF5F5F5),
                                primary: Colors.transparent,
                                elevation: 0,
                                shadowColor: Colors.transparent,
                                minimumSize: Size(270,60),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap
                            ),
                            onPressed: ()async{
                              if (isLoading==false) {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return welcomePage();
                                }));
                              };
                              setState(() {
                                isLoading=true;
                              });
                              await Future.delayed(Duration(seconds: 5));
                              setState(() {
                                isLoading=false;
                              });
                            },
                            child: isLoading?CircularProgressIndicator(color: Colors.white,)
                                :Text('Log in',
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF5F5F5),
                                decoration: TextDecoration.none,
                              ),),
                          )),
                    ),

                    //--or
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('- or -',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF5F5F5),
                            decoration: TextDecoration.none
                        ),textAlign: TextAlign.center,
                        textScaleFactor: 1,
                      ),
                    ),

                    //--login with--
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: SvgPicture.asset('./assets/icons8-google.svg'),
                            ),
                            SizedBox(width: 10,height: 30,),
                            Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: SvgPicture.asset('./assets/icons8-facebook.svg'),
                            ),
                          ],
                        )
                    ),

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

  //--show password--
  void _showHidePassword(){
    setState(() {
      isPassHidden=!isPassHidden;
    });
  }
}



