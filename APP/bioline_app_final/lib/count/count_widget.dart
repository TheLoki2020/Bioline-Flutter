import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CountWidget extends StatefulWidget {
  const CountWidget({Key key}) : super(key: key);

  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  TextEditingController passwordController1;
  bool passwordVisibility1;
  TextEditingController passwordController2;
  bool passwordVisibility2;
  TextEditingController passwordController3;
  bool passwordVisibility3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    passwordController1 = TextEditingController();
    passwordVisibility1 = false;
    passwordController2 = TextEditingController();
    passwordVisibility2 = false;
    passwordController3 = TextEditingController();
    passwordVisibility3 = false;
  }

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
          'Cuenta',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Text(
                  'Cambiar contraseña',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Overpass',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 0, 0),
                child: Text(
                  'Introduzca su contraseña actual',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Overpass',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                child: TextFormField(
                  controller: passwordController1,
                  onChanged: (_) => EasyDebounce.debounce(
                    'passwordController1',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !passwordVisibility1,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility1 = !passwordVisibility1,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility1
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 30, 0, 0),
                child: Text(
                  'Introduzca la nueva contraseña',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                child: TextFormField(
                  controller: passwordController2,
                  onChanged: (_) => EasyDebounce.debounce(
                    'passwordController2',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !passwordVisibility2,
                  decoration: InputDecoration(
                    labelText: 'Nueva contraseña',
                    hintText: 'Nueva contraseña',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility2 = !passwordVisibility2,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility2
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 20, 0, 0),
                child: Text(
                  'Vuelva a introducir la nueva contraseña',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                child: TextFormField(
                  controller: passwordController3,
                  onChanged: (_) => EasyDebounce.debounce(
                    'passwordController3',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !passwordVisibility3,
                  decoration: InputDecoration(
                    labelText: 'Nueva contraseña',
                    hintText: 'Nueva contraseña',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility3 = !passwordVisibility3,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility3
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(125, 30, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('SavePasswordButton pressed ...');
                  },
                  text: 'GUARDAR',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF64C349),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Overpass',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Text(
                  'Privacidad',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Overpass',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                child: Text(
                  'Los datos proporcionados por el usuario sólo serán utilizados por la empesa Bioline AgroSciences cumpliendo con las políticas de privacidad.\n\nSi desea saber más sobre privacidad, por favor, diríjase al siguiente enlace.',
                  textAlign: TextAlign.justify,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 30, 40, 0),
                child: InkWell(
                  onTap: () async {
                    await launchURL(
                        'https://www.biolineagrosciences.com/es/politica-de-confidencialidad/');
                  },
                  child: Text(
                    'https://www.biolineagrosciences.com/es/politica-de-confidencialidad/ ',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Overpass',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
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
