import 'package:flutter/material.dart';
import 'package:pedal_pro/component/users_chat_tech_screen.dart';

class RecentContacts extends StatelessWidget {
  RecentContacts({Key? key}) : super(key: key);
  final contactList = User.generateUsers();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
            child: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: contactList[index].bgColor,
                      shape: BoxShape.circle
                    ),
                    child: Image.asset(contactList[index].iconUrl,width: 40,),
                  ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: contactList.length),
          )
        ],
      ),
    );
  }
}
