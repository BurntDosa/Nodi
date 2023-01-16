import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      scaffoldKey.currentState!.openDrawer();
    });
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
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Wrap(
                    spacing: 0,
                    runSpacing: 0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 100,
                        height: 35.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 20),
                    child: Text(
                      'Upcoming Events',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 40,
                          ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://in.bookmyshow.com/bangalore/movies/avatar-the-way-of-water/ET00037264');
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.ticketAlt,
                        color: Color(0xFF0FCD00),
                      ),
                      title: Text(
                        'Avatar: The Way of Water',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                      ),
                      subtitle: Text(
                        'INOX\nMultiple Timings',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://in.bookmyshow.com/bengaluru/movies/varisu/ET00332034');
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.ticketAlt,
                        color: Color(0xFF0FCD00),
                      ),
                      title: Text(
                        'Varisu',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                      ),
                      subtitle: Text(
                        'PVR Cinemas\nMulitple Timings',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://in.bookmyshow.com/events/ritviz-mimmi-album-launch-tour-bangalore/ET00345335');
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.ticketAlt,
                        color: Color(0xFF0FCD00),
                      ),
                      title: Text(
                        'Mimmi',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                      ),
                      subtitle: Text(
                        'Manpho Convention Centre, Bangalore\n27th March, 2023.',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bookmark_sharp,
                      color: Color(0xFFBE00FF),
                    ),
                    title: Text(
                      'JW Brunch',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 30,
                          ),
                    ),
                    subtitle: Text(
                      'JW Kitchen, JW Marriott, Bangalore.\nEvery Sunday.',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.walking,
                      color: Color(0xFF2390FF),
                    ),
                    title: Text(
                      'Hulivesha: Live Performance',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 30,
                          ),
                    ),
                    subtitle: Text(
                      'Karnataka Chitrakala Parishath\n15th January, 2023.',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.dehaze_rounded,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () async {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Image.asset(
          'assets/images/ryjrtj.png',
          width: 147.9,
          height: 100,
          fit: BoxFit.contain,
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.person_outline_sharp,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              context.pushNamed('uSerprofile');
            },
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FlutterFlowGoogleMap(
                    controller: googleMapsController,
                    onCameraIdle: (latLng) => googleMapsCenter = latLng,
                    initialLocation: googleMapsCenter ??=
                        LatLng(12.9716, 77.5946),
                    markerColor: GoogleMarkerColor.violet,
                    mapType: MapType.terrain,
                    style: GoogleMapStyle.standard,
                    initialZoom: 14,
                    allowInteraction: false,
                    allowZoom: false,
                    showZoomControls: false,
                    showLocation: false,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: true,
                    centerMapOnMarkerTap: true,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.02, -0.68),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0x00101213),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Upcoming Event'),
                                    content:
                                        Text('Hulivesha: Live Performance'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              'assets/images/marker.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.04, -0.37),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00101213),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Cubbon Park'),
                                    content: Text(
                                        'One of Bangalore\'s MOST iconic parks, with various random events throughtout the week will surely keep you busy. Make sure to look out for the dogs on Sunday 🐶'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              'assets/images/qwiderugdfvcuwdraf.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.71, 0.62),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0x00101213),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title:
                                        Text('Indian Music Experience Museum'),
                                    content: Text(
                                        'Modern museum exploring the evolution of Indian music with interactive, multi-sensory exhibits'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              'assets/images/marker.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.75, 0.61),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00101213),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Lalbagh'),
                                    content: Text(
                                        'Lalbagh Botanical Garden is a popular 240-acre garden in Bangalore featuring a diverse collection of plants, a glass house, lake, historical structures and annual flower show.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              'assets/images/qwiderugdfvcuwdraf.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.09, -0.09),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0x00101213),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title:
                                        Text('Happy Hour with LIve Jazz Music'),
                                    content: Text(
                                        'Happy Hour at Sichuan at UB City'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              'assets/images/marker.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.93, 0.96),
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.photo_camera,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pushNamed('Camera');
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
