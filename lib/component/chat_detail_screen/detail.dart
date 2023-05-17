import 'package:flutter/material.dart';
import 'package:pedal_pro/component/chat_detail_screen/widgets/contact_info.dart';
import 'package:pedal_pro/component/chat_detail_screen/widgets/detail_app_bar.dart';
import 'package:pedal_pro/component/chat_detail_screen/widgets/detail_message.dart';
import 'package:pedal_pro/component/message_widget.dart';
import 'package:pedal_pro/constant.dart';
class DetailPage extends StatelessWidget {
   DetailPage( this.message);
final Message message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body:Column(
        children: [
          DetailAppBar(),

          ContactInfo(message),
         Expanded(child:  DetailMessages(),),
        ],
      )
    );
  }
}
