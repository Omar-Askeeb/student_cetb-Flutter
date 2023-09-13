import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.userName,
  }) : super(key: key);

  final String? userName;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (scaffoldKey.currentState!.isDrawerOpen ||
                                    scaffoldKey.currentState!.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }
                              },
                              child: Text(
                                'News',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Cairo',
                                      color: Colors.black,
                                      letterSpacing: 3.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Icon(
                              Icons.home,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('LibrarySearch');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('LibrarySearch');
                              },
                              child: Text(
                                'Library',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Cairo',
                                      color: Colors.black,
                                      letterSpacing: 3.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Icon(
                              Icons.library_books,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('studentProfile');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('studentProfile');
                              },
                              child: Text(
                                'Profile',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Cairo',
                                      color: Colors.black,
                                      letterSpacing: 3.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Icon(
                              Icons.person_rounded,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              context.pushNamedAuth('splash', context.mounted);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.pushNamedAuth(
                                          'splash', context.mounted);
                                    },
                                    child: Text(
                                      'Logout',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Cairo',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: Icon(
                                    Icons.login_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.25, 0.00),
            child: Text(
              'الأخبار',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontSize: 26.0,
                    letterSpacing: 1.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: PagedListView<DocumentSnapshot<Object?>?, NewsRecord>(
                    pagingController: _model.setListViewController(
                      NewsRecord.collection
                          .orderBy('createAt', descending: true),
                    ),
                    padding: EdgeInsets.zero,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    builderDelegate: PagedChildBuilderDelegate<NewsRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),

                      itemBuilder: (context, _, listViewIndex) {
                        final listViewNewsRecord = _model
                            .listViewPagingController!.itemList![listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 100.0,
                            height: 326.6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33333333),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network(
                                  listViewNewsRecord.image,
                                  width: 394.2,
                                  height: 174.7,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Text(
                                    listViewNewsRecord.title,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Cairo',
                                          color: Colors.black,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Text(
                                      listViewNewsRecord.description,
                                      maxLines: 10,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF6B757D),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
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
