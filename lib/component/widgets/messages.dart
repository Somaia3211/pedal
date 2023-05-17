import 'package:flutter/material.dart';
import 'package:pedal_pro/component/chat_detail_screen/detail.dart';
import 'package:pedal_pro/component/message_widget.dart';
import 'package:pedal_pro/constant.dart';

class Messages extends StatelessWidget {
  Messages({Key? key}) : super(key: key);
  final messagesList = Message.generateHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 30,
            ),
        itemCount: messagesList.length);
  }

  _buildMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(
            builder: (context) => DetailPage(messagesList[index])));
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: messagesList[index].user.bgColor,
                shape: BoxShape.circle),
            child: Image.asset(messagesList[index].user.iconUrl),
            width: 60,
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messagesList[index].user.firstName}${messagesList[index].user.lastName}',
                      style: TextStyle(
                          fontSize: 16,
                          color: kPrimaryDark,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      messagesList[index].lastTime,
                      style: TextStyle(color: kGreyLight),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: kPrimaryDark),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
