import 'dart:ui';
class User{
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(this.id,this.firstName,this.lastName,this.iconUrl,this.bgColor);
  static List<User> generateUsers(){
    return [
      User(1, 'Cecity', 'Trujillo', 'images/users_images/image1.jpg', Color(0xFFFDBEC8),),
      User(2, 'Alaya', 'Cordova', 'images/users_images/image3.jpg', Color(0xFFFED6C4),),
      User(3, 'Eathan', 'Sheridan', 'images/users_images/image2.jpg', Color(0xFFA8E4F2),),
      User(4, 'Justin', 'Moore', 'images/users_images/image7.jpg', Color(0xFFFFE5A7),),
      User(5, 'Komal', 'Orr', 'images/users_images/image5.jpg', Color(0xFFC3C1E6),),
      User(6, 'Mike', 'Jhon', 'images/users_images/image8.jpg', Color(0xFFFD95A2),),
    ];
  }
}