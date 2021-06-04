import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:founderslink/utils/mixins/agoraSettings.dart';
import 'package:agora_rtm/agora_rtm.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';


class ChatLobby extends StatefulWidget {
  final String channel;
  final String userName;
  final ClientRole role;

  ChatLobby({this.channel, this.userName, this.role});
  @override
  _ChatLobbyState createState() => _ChatLobbyState();
}

class _ChatLobbyState extends State<ChatLobby> {
  // var appID = '<--- Enter your app id here --->',
  // static final _users = <int>[];
  // final _infoStrings = <String>[];
  // bool muted = false;
  // bool _isLogin = false;
  // bool _isInChannel = false;
  // final _broadcaster = <String>[];
  // final _audience = <String>[];
  // final Map<int, String> _allUsers = {};

  // AgoraRtmClient _client;
  // AgoraRtmChannel _channel;
  // RtcEngine _engine;
  // int localUid;

  // @override
  // void dispose() {
  //   // clear users
  //   _users.clear();
  //   // destroy sdk
  //   _engine.leaveChannel();
  //   _engine.destroy();
  //   _channel.leave();
  //   _allUsers.clear();
  //   _broadcaster.clear();
  //   _audience.clear();
  //   super.dispose();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // initialize agora sdk
  //   initialize();
  //   _createClient();
  // }

  // Future<void> initialize() async {
  //   if (appID.isEmpty) {
  //     setState(() {
  //       _infoStrings.add(
  //         'APP_ID missing, please provide your APP_ID in settings.dart',
  //       );
  //       _infoStrings.add('Agora Engine is not starting');
  //     });
  //     return;
  //   }
  //   await _initAgoraRtcEngine();
  //   _addAgoraEventHandlers();
  //   // await _engine.enableWebSdkInteroperability(true);
  //   await _engine.joinChannel(null, widget.channelName, null, 0);
  // }

  // /// Create agora sdk instance and initialize
  // Future<void> _initAgoraRtcEngine() async {
  //   _engine = await RtcEngine.create(appID);
  //   await _engine.disableVideo();
  //   await _engine.enableAudio();
  //   await _engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
  //   await _engine.setClientRole(widget.role);
  // }

  // /// Add agora event handlers
  // void _addAgoraEventHandlers() {
  //   _engine.setEventHandler(RtcEngineEventHandler(
  //     error: (code) {
  //       setState(() {
  //         final info = 'onError: $code';
  //         _infoStrings.add(info);
  //       });
  //     },
  //     joinChannelSuccess: (channel, uid, elapsed) async {
  //       setState(() {
  //         final info = 'onJoinChannel: $channel, uid: $uid';
  //         _infoStrings.add(info);
  //         localUid = uid;
  //         _allUsers.putIfAbsent(uid, () => widget.userName);
  //       });
  //       if (widget.role == ClientRole.Broadcaster) {
  //         setState(() {
  //           _users.add(uid);
  //         });
  //       }
  //     },
  //     leaveChannel: (stats) async {
  //       setState(() {
  //         _infoStrings.add('onLeaveChannel');
  //         _users.clear();
  //         _allUsers.remove(localUid);
  //       });
  //       await _channel.sendMessage(AgoraRtmMessage.fromText('$localUid:leave'));
  //     },
  //     userJoined: (uid, elapsed) {
  //       setState(() {
  //         final info = 'userJoined: $uid';
  //         _infoStrings.add(info);
  //         _users.add(uid);
  //       });
  //     },
  //     userOffline: (uid, reason) {
  //       setState(() {
  //         final info = 'userOffline: $uid , reason: $reason';
  //         _infoStrings.add(info);
  //         _users.remove(uid);
  //       });
  //     },
  //     firstRemoteVideoFrame: (uid, width, height, elapsed) {
  //       setState(() {
  //         final info = 'firstRemoteVideoFrame: $uid';
  //         _infoStrings.add(info);
  //       });
  //     },
  //   ));
  // }

  // void _createClient() async {
  //   _client = await AgoraRtmClient.createInstance(appID);
  //   _client.onConnectionStateChanged = (int state, int reason) {
  //     if (state == 5) {
  //       _client.logout();
  //       print('Logout.');
  //       setState(() {
  //         _isLogin = false;
  //       });
  //     }
  //   };

  //   String userId = widget.userName;
  //   await _client.login(null, userId);
  //   print('Login success: ' + userId);
  //   setState(() {
  //     _isLogin = true;
  //   });
  //   String channelName = widget.channelName;
  //   _channel = await _createChannel(channelName);
  //   await _channel.join();
  //   print('RTM Join channel success.');
  //   setState(() {
  //     _isInChannel = true;
  //   });
  //   await _channel.sendMessage(AgoraRtmMessage.fromText('$localUid:join'));
  //   _client.onMessageReceived = (AgoraRtmMessage message, String peerId) {
  //     print("Peer msg: " + peerId + ", msg: " + message.text);

  //     var userData = message.text.split(':');

  //     if (userData[1] == 'leave') {
  //       print('In here');
  //       setState(() {
  //         _allUsers.remove(int.parse(userData[0]));
  //       });
  //     } else {
  //       setState(() {
  //         _allUsers.putIfAbsent(int.parse(userData[0]), () => peerId);
  //       });
  //     }
  //   };
  //   _channel.onMessageReceived =
  //       (AgoraRtmMessage message, AgoraRtmMember member) {
  //     print(
  //         'Outside channel message received : ${message.text} from ${member.userId}');

  //     var userData = message.text.split(':');

  //     if (userData[1] == 'leave') {
  //       setState(() {
  //         _allUsers.remove(int.parse(userData[0]));
  //       });
  //     } else {
  //       print('Broadcasters list : $_users');
  //       print('All users lists: ${_allUsers.values}');
  //       setState(() {
  //         _allUsers.putIfAbsent(int.parse(userData[0]), () => member.userId);
  //       });
  //     }
  //   };

  //   for (var i = 0; i < _users.length; i++) {
  //     if (_allUsers.containsKey(_users[i])) {
  //       setState(() {
  //         _broadcaster.add(_allUsers[_users[i]]);
  //       });
  //     } else {
  //       setState(() {
  //         _audience.add('${_allUsers.values}');
  //       });
  //     }
  //   }
  // }

  // Future<AgoraRtmChannel> _createChannel(String name) async {
  //   AgoraRtmChannel channel = await _client.createChannel(name);
  //   channel.onMemberJoined = (AgoraRtmMember member) async {
  //     print('Member joined : ${member.userId}');
  //     // setState(() {

  //     // });
  //     await _client.sendMessageToPeer(
  //         member.userId, AgoraRtmMessage.fromText('$localUid:join'));
  //   };
  //   channel.onMemberLeft = (AgoraRtmMember member) async {
  //     var reversedMap = _allUsers.map((k, v) => MapEntry(v, k));
  //     print('Member left : ${member.userId}:leave');
  //     print('Member left : ${reversedMap[member.userId]}:leave');

  //     setState(() {
  //       _allUsers.remove(reversedMap[member.userId]);
  //     });
  //     await channel.sendMessage(
  //         AgoraRtmMessage.fromText('${reversedMap[member.userId]}:leave'));
  //   };
  //   channel.onMessageReceived =
  //       (AgoraRtmMessage message, AgoraRtmMember member) {
  //     print('Channel message received : ${message.text} from ${member.userId}');

  //     var userData = message.text.split(':');

  //     if (userData[1] == 'leave') {
  //       _allUsers.remove(int.parse(userData[0]));
  //     } else {
  //       _allUsers.putIfAbsent(int.parse(userData[0]), () => member.userId);
  //     }
  //   };
  //   return channel;
  // }

  // /// Toolbar layout
  // Widget _toolbar() {
  //   return widget.role == ClientRole.Audience
  //       ? Container()
  //       : Container(
  //           alignment: Alignment.bottomCenter,
  //           padding: const EdgeInsets.symmetric(vertical: 48),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               RawMaterialButton(
  //                 onPressed: _onToggleMute,
  //                 child: Row(
  //                   children: [
  //                     Icon(
  //                       muted ? Icons.mic_off : Icons.mic,
  //                       color: muted ? Colors.white : Colors.blueAccent,
  //                       size: 20.0,
  //                     ),
  //                     SizedBox(
  //                       width: 5,
  //                     ),
  //                     muted
  //                         ? Text(
  //                             'Unmute',
  //                             style: buttonStyle,
  //                           )
  //                         : Text(
  //                             'Mute',
  //                             style: buttonStyle.copyWith(color: Colors.black),
  //                           )
  //                   ],
  //                 ),
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(10)),
  //                 elevation: 2.0,
  //                 fillColor: muted ? Colors.blueAccent : Colors.white,
  //                 padding: const EdgeInsets.all(15.0),
  //               ),
  //               RawMaterialButton(
  //                 onPressed: () => _onCallEnd(context),
  //                 child: Row(
  //                   children: [
  //                     Icon(
  //                       Icons.call_end,
  //                       color: Colors.white,
  //                       size: 20,
  //                     ),
  //                     SizedBox(
  //                       width: 5,
  //                     ),
  //                     Text(
  //                       'Disconnect',
  //                       style: buttonStyle,
  //                     )
  //                   ],
  //                 ),
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(10)),
  //                 elevation: 2.0,
  //                 fillColor: Colors.redAccent,
  //                 padding: const EdgeInsets.all(15.0),
  //               ),
  //             ],
  //           ),
  //         );
  // }

  // void _onCallEnd(BuildContext context) {
  //   Navigator.pop(context);
  // }

  // void _onToggleMute() {
  //   setState(() {
  //     muted = !muted;
  //   });
  //   _engine.muteLocalAudioStream(muted);
  // }

  @override
  void handlePressedRegister() async {
    // setState(() {
    //   loading = true;
    // });
    // try {
    //   var baseUrl = 'https://soma-tec.herokuapp.com/';
    //   var url = '$baseUrl/auth/signup';
    //   Map<String, String> requestHeaders = {
    //     'Content-type': 'application/json',
    //     'Accept': 'application/json',
    //   };
    //   var response = await http.post(url,
    //       headers: requestHeaders,
    //       body: jsonEncode(<String, String>{
    //         'name': '$name',
    //         'phoneNumber': '$phoneNumber',
    //         'password': '$password'
    //       }));
    //   Map<String, dynamic> body = jsonDecode(response.body);
    //   if (response.statusCode == 409) {
    //     setState(() {
    //       phoneErr = body['message'];
    //       loading = false;
    //       errors = '';
    //       hasError = false;
    //     });
    //   } else if (response.statusCode == 400) {
    //     for (var i = 0; i <= body['message'].length - 1; i++) {
    //       setState(() {
    //         errors = body['message'][i];
    //         loading = false;
    //         hasError = false;
    //       });
    //     }
    //   } else {
    //     setState(() {
    //       hasError = false;
    //     });
    //     if (response.statusCode == 201) {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) =>
    //                 // VerifyView(phoneNumber: phoneNumber.toString())),
    //       );
    //     }
    //   }
    // } catch (err) {
    //   print(err);
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Raising Pre-Seed round for Saas Company",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Hosts",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/sarah.png"),
                          ),
                          Container(
                            child: Text(
                              "Sarah",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/Alice.png"),
                          ),
                          Container(
                            child: Text(
                              "Alice",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/Fred.png"),
                          ),
                          Container(
                            child: Text(
                              "Fred",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/James.png"),
                          ),
                          Container(
                            child: Text(
                              "James",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/tiffany.png"),
                          ),
                          Container(
                            child: Text(
                              "Tiffany",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   margin: EdgeInsets.only(left: 10, top: 10),
              //   child: Text(
              //     "Shared Documents",
              //     style: GoogleFonts.poppins(
              //         fontSize: 18, fontWeight: FontWeight.bold),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(left: 10, right: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Container(
              //         child: Column(
              //           children: [
              //             Container(
              //               child: Image.asset("assets/images/word.png"),
              //             ),
              //             Container(
              //               child: Text(
              //                 "Term Sheet Example",
              //                 style: GoogleFonts.poppins(
              //                     fontSize: 11, fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Row(
              //               children: [
              //                 Container(
              //                   child: Text(
              //                     "Shared by Sarah",
              //                     style: GoogleFonts.poppins(
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ),
              //                 Container(
              //                   child: Image.asset("assets/images/sarah.png"),
              //                   width: 20,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(top: 10),
              //         child: Column(
              //           children: [
              //             Container(
              //               child: Image.asset("assets/images/pdf.png"),
              //             ),
              //             Container(
              //               child: Text(
              //                 "Pitch Deck Example",
              //                 style: GoogleFonts.poppins(
              //                     fontSize: 11, fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Row(
              //               children: [
              //                 Container(
              //                   child: Text(
              //                     "Shared by Tiffany",
              //                     style: GoogleFonts.poppins(
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ),
              //                 Container(
              //                   child: Image.asset("assets/images/tiffany.png"),
              //                   width: 20,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(top: 10),
              //         child: Column(
              //           children: [
              //             Container(
              //               child: Image.asset("assets/images/excel.png"),
              //             ),
              //             Container(
              //               child: Text(
              //                 "VC Database",
              //                 style: GoogleFonts.poppins(
              //                     fontSize: 11, fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Row(
              //               children: [
              //                 Container(
              //                   child: Text(
              //                     "Shared by Alice",
              //                     style: GoogleFonts.poppins(
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ),
              //                 Container(
              //                   child: Image.asset("assets/images/Alice.png"),
              //                   width: 20,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text("Audience",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/Tallfred.png",
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Tallalice.png",
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Talljames.png",
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Talltiffany.png",
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/Tallalice.png",
                            ),
                          ),
                          Container(
                              child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/Talljames.png",
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(top: 60, left: 45),
                                decoration: BoxDecoration(
                                    color: Color(0xff3468EE),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.0))),
                                child: Visibility(
                                  visible: true,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "+ 1",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                          Container(
                            child: Image.asset(
                              "assets/images/Talltiffany.png",
                            ),
                          ),
                          Container(
                              child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/Tallfred.png",
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(top: 60, left: 45),
                                decoration: BoxDecoration(
                                    color: Color(0xff3468EE),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.0))),
                                child: Visibility(
                                  visible: true,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "+ 2",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/Tallfred.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Tallalice.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Talljames.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Talltiffany.png",
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/Tallalice.png",
                            ),
                          ),
                          Container(
                              child: Image.asset(
                            "assets/images/Talljames.png",
                          )),
                          Container(
                            child: Image.asset(
                              "assets/images/Talltiffany.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Tallfred.png",
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      child: FlatButton(
                        child: Text(
                          "Leave",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.red,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 120,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Lobby Info",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 120,
                      child: MaterialButton(
                        child: Text(
                          "Raise Hand",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Color(0xff2CC09C)),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xff2CC09C),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () => {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
