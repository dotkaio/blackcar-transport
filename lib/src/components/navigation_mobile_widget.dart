import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class NavigationMobileWidget extends StatefulWidget {
  const NavigationMobileWidget({
    Key? key,
    this.bgOne,
    this.bgTwo,
    this.bgThree,
    this.bgFour,
  }) : super(key: key);

  final Color? bgOne;
  final Color? bgTwo;
  final Color? bgThree;
  final Color? bgFour;

  @override
  _NavigationMobileWidgetState createState() => _NavigationMobileWidgetState();
}

class _NavigationMobileWidgetState extends State<NavigationMobileWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () async {
              context.goNamed(
                'Request',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Icon(
                      Icons.star_rate,
                      color: widget.bgOne,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Request',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Google Fonts Montserrat',
                          color: widget.bgOne,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              context.goNamed(
                'MyRides',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Icon(
                      Icons.access_time_rounded,
                      color: widget.bgTwo,
                      size: 30,
                    ),
                  ),
                  Text(
                    'My Rides',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Google Fonts Montserrat',
                          color: widget.bgTwo,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              context.goNamed(
                'Account',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Icon(
                      Icons.account_circle,
                      color: widget.bgFour,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Account',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Google Fonts Montserrat',
                          color: widget.bgFour,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
