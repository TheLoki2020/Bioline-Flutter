import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpWidget extends StatefulWidget {
  const HelpWidget({Key key}) : super(key: key);

  @override
  _HelpWidgetState createState() => _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).white,
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
          'Ayuda',
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Text(
                  'Bioline AgroSciencies Iberia',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Overpass',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 0, 0),
                child: Text(
                  'Calle Bremen, 2,\nPol. Ind. La Redonda, Santa María del Águila\n04710 El Ejido – Almería – España',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Overpass',
                        fontSize: 16,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Text(
                  'Teléfono',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Overpass',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 0, 0),
                child: Text(
                  '+34 950 603 403',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Overpass',
                        fontSize: 16,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Text(
                  'E-mail',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Overpass',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 0, 0),
                child: Text(
                  'spain@biolineagrosciences.com',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Overpass',
                        fontSize: 16,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
                child: Text(
                  'POR FAVOR CONTÁCTE CON NOSOTROS SI TIENE CUALQUIER DUDA',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Overpass',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontStyle: FontStyle.italic,
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
