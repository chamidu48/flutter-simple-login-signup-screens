import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final String text;
  final bool filled;
  final desitnation;
  CreateButton({
    Key? key,
    required this.text,
    required this.filled,
    required this.desitnation
  }) : super(key: key);

  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20))
  );

  @override
  Widget build(BuildContext context) {
    return filled?Container(
        decoration: ShapeDecoration(
          shape: shape,
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
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return desitnation;
            }));
          },
          child: Text(text,
          textScaleFactor: 1,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xffF5F5F5),
            decoration: TextDecoration.none,
        ),),
      ))

        : Container(
          child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: shape,
              elevation: 0,
              minimumSize: Size(270,60),
              primary: Color(0xffF5F5F5),
              side: BorderSide(color: Color(0xffF5F5F5),width: 2)),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return desitnation;
                }));
              },
              child: Text(text,
                  textScaleFactor: 1,
                  style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF5F5F5),
                  decoration: TextDecoration.none,
              ),),
          )
    );
  }
}
