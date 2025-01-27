import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velea_v3/utils/firebase_options.dart';
import 'package:velea_v3/widgets/mobiles/listen_radio_channel_mb.dart';

import '../../models/radio_channel.dart';
import '../../theme/flutterflow_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';


class ListRadioChannels extends StatefulWidget {
  const ListRadioChannels({
    super.key
  });
  
  @override
  State<ListRadioChannels> createState() => _ListRadioChannelsState();

}

class _ListRadioChannelsState extends State<ListRadioChannels> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late DatabaseReference _databaseReference;
  bool isInit = false;
  final List<RadioChannel> _radioChannels = [];

  @override
  void initState() {
    initRadioChannel();

    setState(() {
      
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> initRadioChannel() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.firebaseOptions,
    );

    try {
      _databaseReference = FirebaseDatabase.instance.ref("/KHFMRadio/ChannelsInfo");
      final database = FirebaseDatabase.instance;
      database.setLoggingEnabled(false);
      final chnSnapshot = await _databaseReference.get();

      _databaseReference.onValue.listen((event) {
        if (kDebugMode) print("In method content::${event.snapshot.child('/').value.toString()}");

        setState(() {
          for (var e in event.snapshot.children) {
          if (kDebugMode) print('reading node in init ${e.child('chnFullname').value}');  
          
            _radioChannels.add(RadioChannel(chnCountryISO: e.child('chnCntryISO').value.toString(), 
                        chnCode: e.child('chnCode').value.toString(), 
                        chnDescr: e.child('chnDescr').value.toString(), 
                        chnFullName: e.child('chnFullname').value.toString(), 
                        chnImgUrl: e.child('chnImgUrl').value.toString(), 
                        chnIsActive: e.child('chnIsActive').toString(), 
                        chnShortName: e.child('chnShortName').value.toString(), 
                        chnTitle: e.child('chnTitle').value.toString(), 
                        chnUrl: e.child('chnUrl').value.toString(),
                      )
            );
          } 
          if (_radioChannels.isNotEmpty) isInit = true;
        });            
      });      

    } catch (e) {
      if (kDebugMode)  print("Exception here ......::: $e");
    }
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        debugPrint('GestureDetector-> onTap event');
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Radio Channels',
            style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                  fontFamily: 'Outfit',
                  letterSpacing: 0,
                ),
          ),
          centerTitle: false,
          elevation: 0,
        ),
        body : SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              /*Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Our channels is below',
                      style: FlutterFlowTheme.of(context).labelMedium.copyWith(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                    ),
                  ],
                ),
              ),*/
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical, 
                  children: _radioChannels.map((e) {
                    return _paddingItem(e);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _paddingItem(RadioChannel radioChannel) {
    String fname = radioChannel.chnFullName;
    return  Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
      child: GestureDetector(
          onTap: () {
            debugPrint('_paddingItem->channels-> $fname');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListenRadioChannelMb(radioChannel: radioChannel),
              )
            );
          },
          child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color:
                FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x411D2429),
                offset: Offset(
                  0.0,
                  1,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        radioChannel.chnImgUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        8, 8, 4, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          radioChannel.chnFullName,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .copyWith(
                                fontFamily: 'Outfit',
                                letterSpacing: 0,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0, 4, 8, 0),
                          child: AutoSizeText(
                            radioChannel.chnDescr,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitleSmall
                                .copyWith(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0, 4, 0, 0),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        color: Color(0xFF57636C),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 4, 8),
                      child: Text(
                        radioChannel.chnCountryISO,
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .copyWith(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      )      
    );
  }
   
}