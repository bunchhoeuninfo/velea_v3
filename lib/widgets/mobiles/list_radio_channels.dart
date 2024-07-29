import 'package:flutter/material.dart';
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
  //late RadioChannelsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<RadioChannel> radioChannels = [
    const RadioChannel(chnCountryISO: 'KH', chnCode: 'ABCFM001', chnDescr: '1 - វិទ្យុ អេប៊ីស៊ី ភ្នំពេញ FM 107.5 is an internet radio station from Phnom Penh, Cambodia providing unlimited online music.', 
    chnFullName: '1-វិទ្យុ អេប៊ីស៊ី ភ្នំពេញ FM 107.5', chnImgUrl: 'https://firebasestorage.googleapis.com/v0/b/auth-f07aa.appspot.com/o/abc.jpg?alt=media&token=b0d6120d-9256-4a95-b7de-db9a62a7c743',
     chnIsActive: 'true', chnShortName: '1-ABC FM 107.5', chnTitle: 'ABC FM 107.5 Phnom Penh, Cambodia', chnUrl: 'http://radio99.servradio.com:9298'),
     const RadioChannel(chnCountryISO: 'EN', chnCode: 'khfmlove001', chnDescr: 'Love FM 97.5 is an internet radio station from Phnom Penh, Cambodia providing unlimited online music.', 
    chnFullName: '2-LOVE FM 97.5', chnImgUrl: 'https://firebasestorage.googleapis.com/v0/b/auth-f07aa.appspot.com/o/lovefm.png?alt=media&token=4e72052c-9536-4a4a-bdd8-ba59b89f93fc',
     chnIsActive: 'true', chnShortName: 'Love FM short name', chnTitle: 'Love FM 97.5 Phnom Penh, Cambodia', chnUrl: 'http://radio99.servradio.com:9298'),
  ];

  @override
  void initState() {
    super.initState();
    //_model = createModel(context, () => RadioChannelsListModel());
  }

  @override
  void dispose() {
    //_model.dispose();

    super.dispose();
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical, 
                  children: radioChannels.map((e) {
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
                        width: 60,
                        height: 60,
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