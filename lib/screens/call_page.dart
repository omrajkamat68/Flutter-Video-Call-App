import 'package:flutter/material.dart';
import 'package:video_call_app/constants/current_user.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import '../constants/routes.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    final arguments= (ModalRoute.of(context)?.settings.arguments ??
        <String,String>{}) as Map<String,String>;
    final callID = arguments[PageParam.call_id] ?? '';

    return SafeArea(
        child: ZegoUIKitPrebuiltCall(
            appID: /*app ID from ZegoCloud*/,
            appSign: /*app Sign from ZegoCloud in single quotes*/,
            callID: callID,
            userID: currentUser.id,
            userName: currentUser.name,
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ));
  }
}
