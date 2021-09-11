/*import 'package:flutter/material.dart';

import 'button_colors.dart';


class AnimatedButton extends StatefulWidget {
  final double ?heigh;
  final double ?width;
  final String ?text;
  final Color ?animationColor;

  AnimatedButton({this.heigh, this.width, this.text, this.animationColor});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  Color ?textColor;
  Color ?borderColor;
  AnimationController ?_controller;
  Animation ?_animation;
  Animation ?_borderAnimation;

  @override
  void initState() {
    super.initState();
    textColor = ButtonColors.defaultColor;
    borderColor = ButtonColors.defaultColor;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _animation = Tween(begin: 0.0, end: 500.0)
        .animate(CurvedAnimation(curve: Curves.easeIn, parent: _controller))
      ..addListener(() {
        setState(() {});
      });
    _borderAnimation =
        ColorTween(begin: ButtonColors.defaultColor, end: widget.animationColor)
            .animate(
          CurvedAnimation(curve: Curves.easeInOut, parent: _controller),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.heigh,
        width: widget.width,
        child: Material(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                color: _borderAnimation.value,
                width: 2,
              )),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              if (value) {
                _controller.forward();
                setState(() {
                  textColor = Colors.white;
                  borderColor = widget.animationColor;
                });
              } else {
                _controller.reverse();
                setState(() {
                  textColor = ButtonColors.defaultColor;
                  borderColor = ButtonColors.defaultColor;
                });
              }
            },
            child: Container(
              color: ButtonColors.backgroundColor,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget.animationColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: _animation.value,
                    ),
                  ),
                  Center(
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 300),
                      style: TextStyle(color: textColor),
                      child: Text(widget.text),
                      curve: Curves.easeIn,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

*/