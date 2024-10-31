import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.country,
      required this.email,
      required this.dateOfBirth,
      required this.age,
      required this.phone,
      required this.image,
      required this.gender});

  final String firstName;
  final String lastName;
  final String country;
  final String email;
  final String dateOfBirth;
  final String age;
  final String phone;
  final String image;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: Image.network(
              image,
            ),
          ),
          Text(
            "Name : " + firstName + " " + lastName,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "Country : " + country,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "Gender : " + gender,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "Email : " + email,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "Date of Birth : " + dateOfBirth,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "Age : " + age,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "Phone : " + phone,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
