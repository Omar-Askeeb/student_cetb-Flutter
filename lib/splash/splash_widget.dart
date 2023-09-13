import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with TickerProviderStateMixin {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF97D7FF),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.8,
          decoration: BoxDecoration(
            color: Color(0xFF97D7FF),
          ),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('Login');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation']!),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مرحبا بكم في تطبيق الطالب',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Cairo',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'برنامج مصمم ليساعد طلاب كلبة التقنية \nالالكترونية بني وليد خلال\n فترة الدراسة بالكلية',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Cairo',
                                  useGoogleFonts: false,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
