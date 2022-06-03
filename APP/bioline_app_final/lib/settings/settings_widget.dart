import '../count/count_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../help/help_widget.dart';
import '../new_name/new_name_widget.dart';
import '../notifications/notifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'Ajustes',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0.1),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/171/600',
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewNameWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Nombre Usuario',
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Overpass',
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.25, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationsWidget(),
                              ),
                            );
                          },
                          text: 'Notificaciones',
                          icon: Icon(
                            Icons.notifications_active,
                            size: 30,
                          ),
                          options: FFButtonOptions(
                            width: 200,
                            height: 40,
                            color: FlutterFlowTheme.of(context).white,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Overpass',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.1, 0),
                    child: Text(
                      '(Des)activar notificaciones',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.5, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.25, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CountWidget(),
                                ),
                              );
                            },
                            text: 'Cuenta',
                            icon: Icon(
                              Icons.account_circle,
                              size: 30,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 40,
                              color: FlutterFlowTheme.of(context).white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Overpass',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.3, 0),
                    child: Text(
                      'Seguridad y cambio de contraseña',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.5, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.05, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HelpWidget(),
                                ),
                              );
                            },
                            text: 'Ayuda',
                            icon: Icon(
                              Icons.help_outline_rounded,
                              size: 30,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 40,
                              color: FlutterFlowTheme.of(context).white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Overpass',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.15, 0),
                    child: Text(
                      'Centro de ayuda, contáctanos',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
