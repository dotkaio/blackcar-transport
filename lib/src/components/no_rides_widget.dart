import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class NoRidesWidget extends StatefulWidget {
  const NoRidesWidget({Key? key}) : super(key: key);

  @override
  _NoRidesWidgetState createState() => _NoRidesWidgetState();
}

class _NoRidesWidgetState extends State<NoRidesWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'No rides yet.',
      style: FlutterFlowTheme.of(context).bodyText1,
    );
  }
}
