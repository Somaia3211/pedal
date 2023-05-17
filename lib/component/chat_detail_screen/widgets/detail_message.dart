import 'package:flutter/material.dart';
import 'package:pedal_pro/component/message_widget.dart';
import 'package:pedal_pro/constant.dart';

class DetailMessages extends StatelessWidget {
  final myId = 0;
  final list = Message.generateMessagesFromUser();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var messageList = List.from(list.reversed);
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 80),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView.separated(
              reverse: true,
                controller: _scrollController,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) =>
                messageList[index].user.id == myId
                    ? _buildReceivedText(messageList[index])
                    : _buildSenderText(messageList[index]),
                separatorBuilder: (_, index) =>
                const SizedBox(
                  height: 20,
                ),
                itemCount: messageList.length),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              child: Stack(
                children: [
                  TextField(
                    onTap:(){
                      _scrollController.animateTo(
                          0, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
                    },
                    decoration: InputDecoration(
                        fillColor: kGreyLight.withOpacity(0.2),
                        filled: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none
                        ),
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(
                          color: kPrimaryDark.withOpacity(0.3),
                          fontSize: 14,
                        )
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: kPrimary,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.send, color: Colors.white, size: 20,),

                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildReceivedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message.lastTime,
          style: const TextStyle(
            color: kGreyLight,
            fontSize: 12,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kPrimaryLight,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180),
            child: Text(
              message.lastMessage,
              style: TextStyle(height: 1.5),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSenderText(Message message) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            message.isContinue
                ? SizedBox(
              width: 40,
            )
                : Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: message.user.bgColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                message.user.iconUrl,
                width: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: kGreyLight.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 180),
                  child: Text(
                    message.lastMessage,
                    style: TextStyle(height: 1.5, color: kPrimaryDark),
                  ),
                ))
          ],
        ),
        Text(
          message.lastTime,
          style: TextStyle(color: kGreyLight, fontSize: 12),
        )
      ],
    );
  }
}
