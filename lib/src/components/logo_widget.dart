import 'package:flutter/material.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 75,
        height: 50,
        child: Stack(
          children: [
            if (Theme.of(context).brightness == Brightness.light)
              Image.asset(
                'assets/images/darkLogo.png',
                fit: BoxFit.contain,
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              Image.asset(
                'assets/images/lightLogo.png',
                fit: BoxFit.contain,
              ),
          ],
        ),
      ),
    );
  }
}
