import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_swipeable_stack.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class USerprofileWidget extends StatefulWidget {
  const USerprofileWidget({Key? key}) : super(key: key);

  @override
  _USerprofileWidgetState createState() => _USerprofileWidgetState();
}

class _USerprofileWidgetState extends State<USerprofileWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late SwipeableCardSectionController swipeableStackController;

  @override
  void initState() {
    super.initState();
    swipeableStackController = SwipeableCardSectionController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF050000),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Text(
              'User Profile',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 40,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                context.pushNamed('plus1system');
              },
              child: Image.asset(
                'assets/images/6vgr8y21i9741_PlusOne.webp',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.05, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -0.05),
                          child: Container(
                            width: double.infinity,
                            height: 260.4,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.72, -0.18),
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 5,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.68, -0.15),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/images/99633837-649b-4a52-beb4-1504911f5df3.jpeg',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.74, -0.8),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 0, 0),
                                    child: Text(
                                      'BurntDosa',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 30,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.34, 0.3),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF858585),
                                      shape: BoxShape.circle,
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 18,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.35, -0.1),
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    child: Stack(
                                      children: [
                                        FlutterFlowSwipeableStack(
                                          topCardHeightFraction: 0.72,
                                          middleCardHeightFraction: 0.68,
                                          bottomCardHeightFraction: 0.75,
                                          topCardWidthFraction: 0.9,
                                          middleCardWidthFraction: 0.85,
                                          bottomCardWidthFraction: 0.8,
                                          onSwipeFn: (index) {},
                                          onLeftSwipe: (index) {},
                                          onRightSwipe: (index) {},
                                          onUpSwipe: (index) {},
                                          onDownSwipe: (index) {},
                                          itemBuilder: (context, index) {
                                            return [
                                              () => FlipCard(
                                                    fill: Fill.fillBack,
                                                    direction: FlipDirection
                                                        .HORIZONTAL,
                                                    speed: 400,
                                                    front: Container(
                                                      width: 52.7,
                                                      height: 18.9,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/Superheart_128.png',
                                                        width: 50,
                                                        height: 50,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    back: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        border: Border.all(
                                                          color: Colors.white,
                                                          width: 3,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          'Your pics are well liked ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              () => FlipCard(
                                                    fill: Fill.fillBack,
                                                    direction: FlipDirection
                                                        .HORIZONTAL,
                                                    speed: 400,
                                                    front: Container(
                                                      width: 90,
                                                      height: 90,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/x1o2hnh9ywq71_StoneFace.webp',
                                                        width: 100,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    back: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        border: Border.all(
                                                          color: Colors.white,
                                                          width: 3,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          'You strive to find happening things',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              () => FlipCard(
                                                    fill: Fill.fillBack,
                                                    direction: FlipDirection
                                                        .HORIZONTAL,
                                                    speed: 400,
                                                    front: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/camera-flash_(1).png',
                                                        width: 100,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    back: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        border: Border.all(
                                                          color: Colors.white,
                                                          width: 3,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          'PIctures or it didn\'t happen',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                            ][index]();
                                          },
                                          itemCount: 3,
                                          controller: swipeableStackController,
                                          enableSwipeUp: false,
                                          enableSwipeDown: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.03, 1.04),
                                  child: Container(
                                    width: 443.1,
                                    height: 71.5,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1.2),
                child: Container(
                  width: 420.1,
                  height: 534.7,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.82),
                        child: Container(
                          width: 392.6,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              'Interests',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 40,
                                      ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.06, -0.39),
                        child: Container(
                          width: 334.7,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Color(0xFF1EA896),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListTile(
                            title: Text(
                              'Stand Up',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.19, 0.14),
                        child: Container(
                          width: 334.7,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Color(0xFF6A0136),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListTile(
                            title: Text(
                              'Drama',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.12, 0.69),
                        child: Container(
                          width: 334.7,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Color(0xFF726DA8),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListTile(
                            title: Text(
                              'Dance',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.9),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
