
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15,bottom: 15,left: 5,right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Scaffold.of(context).openDrawer();
              }, icon: Icon(Icons.menu)),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings))
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Container(
                margin:EdgeInsets.only(bottom: 10,left: 10,right: 10),
                height: 200,
                color: Colors.red,),
            ),)
      ],
    );
  }
}
