import 'package:flutter/material.dart';

class ButtonAnimation extends StatefulWidget {
  final Color? primaryColor;
  final Color? darkPrimaryColor;

  ButtonAnimation({required this.primaryColor, required this.darkPrimaryColor});
  @override
  _ButtonAnimationState createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _scaleAnimationController;
  late AnimationController _fadeAnimationController;

  Animation<double>? _animation;
  Animation<double>? _scaleAnimation;
  Animation<double>? _fadeAnimation;

  double buttonWidth = 200.0;
  double scale = 1.0;
  bool animationComplete = false;
  double barColorOpacity = .6;
  bool animationStart = false;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    _scaleAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _fadeAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _fadeAnimation =
        Tween<double>(begin: 50.0, end: 0.0).animate(_fadeAnimationController);

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.2).animate(_scaleAnimationController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _scaleAnimationController.reverse();

              _fadeAnimationController.forward();
              _animationController.forward();
            }
          });

    _animation = Tween<double>(begin: 0.0, end: buttonWidth)
        .animate(_animationController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                animationComplete = true;
                barColorOpacity = .0;
              });
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _scaleAnimationController,
          builder: (context, _) => Transform.scale(
            scale: _scaleAnimation!.value,
            child: InkWell(
              onTap: () {
                _scaleAnimationController.forward();
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: widget.primaryColor,
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        child: animationComplete
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : Text(
                                "Download",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _fadeAnimationController,
                      builder: (ctx, _) => Container(
                        width: _fadeAnimation!.value,
                        height: 50,
                        decoration: BoxDecoration(
                            color: widget.darkPrimaryColor,
                            borderRadius: BorderRadius.circular(3)),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _animationController,
          builder: (ctx, _) => Positioned(
            left: 0,
            top: 0,
            width: _animation!.value,
            height: 50,
            child: AnimatedOpacity(
              opacity: barColorOpacity,
              duration: Duration(milliseconds: 200),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
