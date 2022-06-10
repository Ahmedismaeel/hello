import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hello/helper/app_color.dart';
import 'package:hello/helper/responsive.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  CustomButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Container(
        height: height(52),
        width: width(340),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width(20)),
          color: AppColor.accent,
          boxShadow: [],
        ),
        child: Center(
            child: Text(title!.toUpperCase(),
                style: TextStyle(
                    fontSize: width(14),
                    fontWeight: FontWeight.normal,
                    color: Colors.white))),
      ),
    );
  }
}

class TransButton extends StatelessWidget {
  final Widget? Title;
  TransButton({Key? key, this.Title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: width(52),
        width: width(340),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width(20)),
          color: Colors.transparent,
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey,
            //   offset: Offset(1.0, 4.0), //(x,y)
            //   blurRadius: 10.0,
            // ),
          ],
        ),
        child: Center(
          child: Title,
        ));
  }
}

class CustomColoredButton extends StatelessWidget {
  final String? Title;
  final Color? color;
  CustomColoredButton({Key? key, this.Title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width(56),
      width: width(338),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width(20)),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [color!, color!]),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     offset: Offset(1.0, 4.0), //(x,y)
        //     blurRadius: 10.0,
        //   ),
        // ],
      ),
      child: Center(
          child: Text(Title!.toUpperCase(),
              style: TextStyle(
                  fontSize: width(14),
                  fontWeight: FontWeight.normal,
                  color: Colors.white))),
    );
  }
}
