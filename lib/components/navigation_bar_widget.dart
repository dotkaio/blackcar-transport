import '../auth/auth_util.dart';
import '../components/logo_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({
    Key? key,
    this.bgOne,
    this.bgTwo,
    this.bgThree,
    this.bgFour,
    this.bgOneB,
    this.bgTwoB,
    this.bgThreeB,
    this.bgFourB,
  }) : super(key: key);

  final Color? bgOne;
  final Color? bgTwo;
  final Color? bgThree;
  final Color? bgFour;
  final Color? bgOneB;
  final Color? bgTwoB;
  final Color? bgThreeB;
  final Color? bgFourB;

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: double.infinity,
            height: 32,
            decoration: BoxDecoration(),
          ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  context.pushNamed(
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
                child: LogoWidget(),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed(
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
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: widget.bgOne,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Request',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Google Fonts Montserrat',
                                    color: valueOrDefault<Color>(
                                      widget.bgOneB,
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    fontSize: 18,
                                    useGoogleFonts: false,
                                  ),
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
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: widget.bgTwo,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'My rides',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Google Fonts Montserrat',
                                    color: valueOrDefault<Color>(
                                      widget.bgTwoB,
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    fontSize: 18,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed(
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
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: widget.bgFour,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Account',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Google Fonts Montserrat',
                                    color: valueOrDefault<Color>(
                                      widget.bgFourB,
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    fontSize: 18,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              AuthUserStreamWidget(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    valueOrDefault<String>(
                      currentUserPhoto,
                      'https://firebasestorage.googleapis.com/v0/b/blackcarapp-edcf1.appspot.com/o/profilePlaceholder.jpg?alt=media&token=af06c308-4531-4261-a478-849d289ac36f',
                    ),
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
