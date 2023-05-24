import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detail_page_model.dart';
export 'detail_page_model.dart';

class DetailPageWidget extends StatefulWidget {
  const DetailPageWidget({
    Key? key,
  }) : super(key: key);

  //static const String routeName = '/detail';

  @override
  _DetailPageWidgetState createState() => _DetailPageWidgetState();
}

class _DetailPageWidgetState extends State<DetailPageWidget> {
  late DetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: double.infinity,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: const Image(
                                  image: AssetImage('assets/images/card2.png'),
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              //),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 5, 5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 46,
                                          icon: const Icon(
                                            Icons.chevron_left_rounded,
                                            color: Colors.blue,
                                            size: 24,
                                          ),
                                          onPressed: () async {
                                            // context.pop();
                                          },
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1, 0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              color: Colors.blue,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              // context.pop();
                                            },
                                          ),
                                        ),
                                      ],
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Text(
                                  'Modern House',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge,
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                buttonSize: 46,
                                icon: const Icon(
                                  Icons.sentiment_dissatisfied_rounded,
                                  color: Color(0xFF2C2B2B),
                                  size: 24,
                                ),
                                onPressed: () async {
                                  //  context.pop();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                          Text(
                            '2nd St, New York, NY 10003, USA',
                            style: FlutterFlowTheme.of(context).titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: RatingBarIndicator(
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rate,
                            color: FlutterFlowTheme.of(context).warning,
                          ),
                          direction: Axis.horizontal,
                          rating: 4.8,
                          unratedColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          itemCount: 5,
                          itemSize: 24,
                        ),
                      ),
                      Text(
                        '4.8',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              fontSize: 17,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: FlutterFlowIconButton(
                                borderColor: const Color(0xFF554E4E),
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,
                                icon: const FaIcon(
                                  FontAwesomeIcons.house,
                                  color: Color(0x4C0F019D),
                                  size: 23,
                                ),
                                onPressed: () {
                                  //print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Text(
                              '5 rooms',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: FlutterFlowIconButton(
                                borderColor: const Color(0xFF554E4E),
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,
                                icon: const FaIcon(
                                  FontAwesomeIcons.bed,
                                  color: Color(0x4C0F019D),
                                  size: 23,
                                ),
                                onPressed: () {
                                  // print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Text(
                              '3 beds',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: FlutterFlowIconButton(
                                borderColor: const Color(0xFF554E4E),
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,
                                icon: const FaIcon(
                                  FontAwesomeIcons.chartArea,
                                  color: Color(0x4C0F019D),
                                  size: 23,
                                ),
                                onPressed: () {
                                  // print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Text(
                              '150 m sq',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: FlutterFlowIconButton(
                                borderColor: const Color(0xFF554E4E),
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,
                                icon: const FaIcon(
                                  FontAwesomeIcons.shower,
                                  color: Color(0x4C0F019D),
                                  size: 23,
                                ),
                                onPressed: () {
                                  //  print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Text(
                              '2 baths',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Description',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                          child: Text(
                            'This is a description!!!',
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //),
            // ),
          ],
        ),
      ),
    );
  }
}
