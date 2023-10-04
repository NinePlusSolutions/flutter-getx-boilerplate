import 'package:flutter/material.dart';
import 'package:flutter_getx_base/app_controller.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:get/get.dart';

class JumpingDots extends StatefulWidget {
  @override
  _JumpingDotsState createState() => _JumpingDotsState();
}

class _JumpingDotsState extends State<JumpingDots>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _firstDot, _secondDot, _thirdDot;
  final AppController appController = Get.find();
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      })
      ..forward();

    _firstDot = Tween(begin: 0.0, end: 12.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.33, curve: Curves.easeOut),
      reverseCurve: const Interval(0.0, 0.33, curve: Curves.easeIn),
    ));

    _secondDot = Tween(begin: 0.0, end: 12.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.33, 0.66, curve: Curves.easeOut),
      reverseCurve: const Interval(0.33, 0.66, curve: Curves.easeIn),
    ));

    _thirdDot = Tween(begin: 0.0, end: 12.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.66, 1.0, curve: Curves.easeOut),
      reverseCurve: const Interval(0.66, 1.0, curve: Curves.easeIn),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_firstDot),
        const SizedBox(width: 8),
        _buildDot(_secondDot),
        const SizedBox(width: 8),
        _buildDot(_thirdDot),
      ],
    );
  }

  Widget _buildDot(Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Container(
        width: 8,
        height: 8 + animation.value,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: appController.isDarkModeOn.value
              ? ColorConstants.colorDarkModeBlue
              : ColorConstants.kPrimaryColor,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
