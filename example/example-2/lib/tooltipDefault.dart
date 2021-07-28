import 'package:flutter/widgets.dart';

class myTooltipDefault extends StatelessWidget {
  final String message;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final double height;
  const myTooltipDefault({
    Key? key,
    required this.message,
    required this.height,
    this.padding,
    this.margin,
    this.decoration,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(minHeight: height),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Image(
              image: AssetImage("images/images.jpg"),
              width: 300,
            ),
            Container(
                width: 300,
                padding: padding,
                margin: margin,
                decoration: decoration,
                child: Center(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Text(
                    message,
                    style: textStyle,
                  ),
                ))
          ],
        ));
  }
}
