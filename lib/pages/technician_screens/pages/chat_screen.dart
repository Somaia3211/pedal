import 'package:flutter/material.dart';
import 'package:pedal_pro/component/widgets/messages.dart';
import 'package:pedal_pro/component/widgets/recent_contacts.dart';

import '../../../constant.dart';

class TechnicianChatScreen extends StatelessWidget {
  const TechnicianChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25,top: 20),
              child: Text(
                'Chats',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
             RecentContacts(),
             Messages(),
          ],
        ),
      ),
    );
  }
}
