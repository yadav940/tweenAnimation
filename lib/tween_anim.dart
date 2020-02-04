import 'package:flutter/material.dart';


class TweenAnim extends StatefulWidget {
  @override
  _TweenAnimState createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim> {
  double targetValue = 24.0;
  Color _colorValue=Colors.black;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        margin: EdgeInsets.symmetric(vertical: 100),
        child: Center(
          child: TweenAnimationBuilder(
            //tween: Tween<double>(begin: 0, end: targetValue),
            tween: ColorTween(begin: Colors.black,end: Colors.orange),
            curve: Curves.bounceInOut,
            onEnd: ()=>(){
              print("all end");
            },
            duration: Duration(seconds: 2),
            builder: (BuildContext context, Color _Value, Widget child) {
              return IconButton(
                // iconSize: size,
                color: _colorValue,
                icon: child,
                //icon: Image.asset('assets/user.png'),
                onPressed: () {
                  setState(() {
                    _colorValue=_Value;//==Colors.orange?Colors.orange:Colors.red;
                    //targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                  });
                },
              );
            },
            child: Icon(Icons.sentiment_satisfied),
          ),
        ),
      ),
    );
  }
}
