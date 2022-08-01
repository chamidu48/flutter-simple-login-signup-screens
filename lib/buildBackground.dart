import 'package:flutter/material.dart';

class BackgroundImageProvide extends StatelessWidget {

  final Widget child;
  final String imgUrl;

  const BackgroundImageProvide({
    Key? key,
    required this.child,
    required this.imgUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildShaderMask(),
        child
      ],
    );
  }

  ShaderMask buildShaderMask() {
    return ShaderMask(
    shaderCallback: (bounds)=>LinearGradient(
        colors: [
          Colors.black.withOpacity(0.5),
          Color(0xffF70776).withOpacity(0.1),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgUrl),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
          )
      ),
    ),
  );
  }
}
