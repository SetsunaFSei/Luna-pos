import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    @required this.onPressed,
    this.text,
    this.color,
    this.textStyle = AppStyle.labelButton,
    this.width = double.infinity,
  });

  final GestureTapCallback onPressed;
  final String text;
  final Color color;
  final TextStyle textStyle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 41,
      child: Container(
        decoration: textStyle != AppStyle.labelButton
            ? ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  side: BorderSide(
                    width: 2,
                    color: AppColor.darkPurple,
                  ),
                ),
              )
            : null,
        child: new RaisedButton(
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(8),
            )),

            // textColor: Colors.white,
            // color: Theme.of(context).primaryColor,
            color: color,
            autofocus: true,
            clipBehavior: Clip.none,
            elevation: 1,
            hoverElevation: 1,
            child: Text(
              text,
              style: textStyle,
            )),
      ),
    );
  }
}

class CelestialIconButton extends StatelessWidget {
  CelestialIconButton(
      {@required this.onPressed, this.icon, this.size, this.color, this.tint});
  final GestureTapCallback onPressed;
  final String icon;
  final double size;
  final Color color;
  final Color tint;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: color, borderRadius: new BorderRadius.all(Radius.circular(8))),
      // color: color,
      child: IconButton(
        // icon: const Icon(Icons.search),
        icon: Image.asset(
          icon,
          color: tint,
          height: size,
          width: size,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class CelestialNormalButton extends StatelessWidget {
  CelestialNormalButton({@required this.onPressed, @required this.title});
  final GestureTapCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text('Lihat Voucher Saya'));
  }
}

class LabelButton extends StatelessWidget {
  LabelButton(
      {@required this.onPressed,
      this.text,
      this.colors,
      this.style,
      this.textAlign});
  final GestureTapCallback onPressed;
  final String text;
  final Color colors;
  final TextStyle style;
  final TextAlign textAlign;
  // MaterialColor colorCustom = MaterialColor(0xFF880E4F, colors);
  // final Colors colors = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        // autofocus: null,
        // clipBehavior: null,
        // color: Colors.white,

        textColor: colors, //Colors.purple[900],
        disabledColor: Colors.grey,
        // disabledTextColor: Colors.black,
        // padding: EdgeInsets.all(8.0),
        // splashColor: Colors.blueAccent,
        onPressed: onPressed,
        child: Text(text, textAlign: textAlign, style: style));
  }
}
