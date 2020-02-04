import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  @override
  _TweenAnimState createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim> {
  double targetValue = 24.0;
  Color _colorValue = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100),
        child: Center(
          child: TweenAnimationBuilder(
            //tween: Tween<double>(begin: 0, end: targetValue),
            tween: ColorTween(begin: Colors.orange, end: Colors.red),
            curve: Curves.bounceInOut,
            onEnd: () => () {
              print("all end");
              _colorValue = Colors.orange;
              setState(() {
                debugPrint('on click of image change');
                //==Colors.orange?Colors.orange:Colors.red;
                //targetValue = targetValue == 24.0 ? 48.0 : 24.0;
              });
            },
            duration: Duration(seconds: 2),
            builder: (BuildContext context, Color _Value, Widget child) {
              /*return IconButton(
                // iconSize: size,
                color: _colorValue,
                //icon: child,
                icon: Image.asset('assets/user.png'),
                onPressed: () {
                  _colorValue = _Value;
                  setState(() {
                    debugPrint('on click of image change');
                    //==Colors.orange?Colors.orange:Colors.red;
                    //targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                  });
                },
              );*/
              debugPrint('image color -- $_Value');
              return InkWell(
                onTap: () {
                  _colorValue = Colors.orange;
                  setState(() {
                    debugPrint('on click of image change');
                    //==Colors.orange?Colors.orange:Colors.red;
                    //targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                  });
                },
                child: Image.asset(
                  'assets/user.png',
                  color: _Value,
                ),
              );
            },
            child: Icon(Icons.sentiment_satisfied),
          ),
        ),
      ),
    );
  }
}
