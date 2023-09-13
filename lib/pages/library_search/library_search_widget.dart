import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'library_search_model.dart';
export 'library_search_model.dart';

class LibrarySearchWidget extends StatefulWidget {
  const LibrarySearchWidget({Key? key}) : super(key: key);

  @override
  _LibrarySearchWidgetState createState() => _LibrarySearchWidgetState();
}

class _LibrarySearchWidgetState extends State<LibrarySearchWidget> {
  late LibrarySearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LibrarySearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().searchActive = false;
      });
    });

    _model.searchTextController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<LibraryRecord>>(
      stream: queryLibraryRecord(
        queryBuilder: (libraryRecord) => libraryRecord.orderBy('ID'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
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
          );
        }
        List<LibraryRecord> librarySearchLibraryRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            drawer: Drawer(
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
                          context.pushNamed('HomePage');
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
                                  context.pushNamed('HomePage');
                                },
                                child: Text(
                                  'News',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Cairo',
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.normal,
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
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                                child: Text(
                                  'Library',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Cairo',
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        letterSpacing: 2.0,
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
                                Icons.settings_outlined,
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
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Cairo',
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        letterSpacing: 2.0,
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

                                context.goNamedAuth('splash', context.mounted);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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

                                        context.goNamedAuth(
                                            'splash', context.mounted);
                                      },
                                      child: Text(
                                        'Logout',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Cairo',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              fontSize: 24.0,
                                              letterSpacing: 2.0,
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
                  context.pop();
                },
              ),
              title: Text(
                'المكتبة',
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontSize: 26.0,
                      useGoogleFonts: false,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 0.0, 15.0),
                            child: Autocomplete<String>(
                              initialValue: TextEditingValue(),
                              optionsBuilder: (textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return librarySearchLibraryRecordList
                                    .map((e) => e.bookName)
                                    .toList()
                                    .where((option) {
                                  final lowercaseOption = option.toLowerCase();
                                  return lowercaseOption.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) {
                                return AutocompleteOptionsList(
                                  textFieldKey: _model.searchTextKey,
                                  textController: _model.searchTextController!,
                                  options: options.toList(),
                                  onSelected: onSelected,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  textHighlightStyle: TextStyle(),
                                  elevation: 4.0,
                                  optionBackgroundColor: Color(0xFFF4FAFF),
                                  optionHighlightColor: Color(0xFFBAD2DF),
                                  maxHeight: 200.0,
                                );
                              },
                              onSelected: (String selection) {
                                setState(() => _model.searchTextSelectedOption =
                                    selection);
                                FocusScope.of(context).unfocus();
                              },
                              fieldViewBuilder: (
                                context,
                                textEditingController,
                                focusNode,
                                onEditingComplete,
                              ) {
                                _model.searchTextController =
                                    textEditingController;
                                return TextFormField(
                                  key: _model.searchTextKey,
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onEditingComplete: onEditingComplete,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.searchTextController',
                                    Duration(milliseconds: 2000),
                                    () async {
                                      setState(() {
                                        _model.simpleSearchResults = TextSearch(
                                          librarySearchLibraryRecordList
                                              .map(
                                                (record) => TextSearchItem(
                                                    record, [record.bookName!]),
                                              )
                                              .toList(),
                                        )
                                            .search(_model
                                                .searchTextController.text)
                                            .map((r) => r.object)
                                            .toList();
                                        ;
                                      });
                                      setState(() {
                                        FFAppState().searchActive = true;
                                      });
                                    },
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Book Search...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Cairo',
                                          color: Color(0xFF96A3AE),
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Cairo',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                      ),
                                  textAlign: TextAlign.center,
                                  maxLines: null,
                                  validator: _model
                                      .searchTextControllerValidator
                                      .asValidator(context),
                                );
                              },
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.clear,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            setState(() {
                              _model.searchTextController?.clear();
                            });
                            setState(() {
                              FFAppState().searchActive = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  if (!FFAppState().searchActive)
                    Expanded(
                      flex: 8,
                      child: Builder(
                        builder: (context) {
                          final booksNoSearch =
                              librarySearchLibraryRecordList.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: booksNoSearch.length,
                            itemBuilder: (context, booksNoSearchIndex) {
                              final booksNoSearchItem =
                                  booksNoSearch[booksNoSearchIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Container(
                                  width: 100.0,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE3E7ED),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Image.network(
                                          booksNoSearchItem.cover,
                                          width: 90.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Book',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem
                                                          .bookName,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Author',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem.author,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Edition',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem.edition,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Copies',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem.copies
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  if (FFAppState().searchActive)
                    Expanded(
                      flex: 8,
                      child: Builder(
                        builder: (context) {
                          final booksNoSearch =
                              _model.simpleSearchResults.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: booksNoSearch.length,
                            itemBuilder: (context, booksNoSearchIndex) {
                              final booksNoSearchItem =
                                  booksNoSearch[booksNoSearchIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Container(
                                  width: 100.0,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE3E7ED),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Image.network(
                                          booksNoSearchItem.cover,
                                          width: 90.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Book',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem
                                                          .bookName,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Author',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem.author,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Edition',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem.edition,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Copies',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      booksNoSearchItem.copies
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.black,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
