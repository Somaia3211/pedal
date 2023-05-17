import 'dart:ui';

import 'package:pedal_pro/component/users_chat_tech_screen.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  //fake data, fetch from your DB instead
  static List<Message> generateHomePageMessage() {
    return [
      Message(
          users[0], 'Hey there! What\'s up? Is everything going well', '18:32'),
      Message(
          users[1], 'Can I call you back? I\'m in the hospital now.', '14:05'),
      Message(
          users[2], 'Yeah, Do you have any good songs to suggest?', '14:00'),
      Message(users[3], 'Hi! I went shopping today and I missed your message!',
          '13:35'),
      Message(users[4], 'I passed you on the ride into work, have you see me?',
          '12:11'),
      Message(
          users[5], 'Hey there! What\'s up? Is everything going well', '12:00'),
    ];
  }

//message from the first user
  static List<Message> generateMessagesFromUser() {
    return [
      Message(users[0], 'Hey there! What\'s up? Is every thing going well', '18:35'),
      Message(
          me,
          'Nothing. Just chilling and watching YouTube . What about you? ',
          '18:36'),
      Message(
          users[0],
          'Same here! Been watching YouTube for the past 5 hours despite of having so much to do!😅 ',
          '18:36',
          isContinue: true),
      Message(users[0], 'It\'s hard to be productive, man 🙄 ', '18:40'),
      Message(me, 'Yeah I know, I\'m in the same position 😂 ', '18:35'),
      Message(users[0], 'lol', '18:55'),
    ];
  }
}

var users = User.generateUsers();
var me = User(0, 'Ruize', 'Nie', 'images/users_images/img2.png', Color(0xFFFFF),
);
