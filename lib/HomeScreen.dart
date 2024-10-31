import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_users/Providers/user_provider.dart';
import 'package:random_users/Widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random User')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Consumer<UserProvider>(
          builder: (context, provider, child) {
            final randomUser = provider.userModel?.results;

            if (randomUser == null) {
              provider.fetchUserData();
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.separated(
                itemCount: randomUser.length,
                itemBuilder: (context, index) {
                  final user = randomUser[index];
                  return UserCard(
                    gender: user.gender.toString(),
                    firstName: user.name!.first.toString(),
                    lastName: user.name!.last.toString(),
                    age: user.dob!.age.toString(),
                    country: user.location!.country.toString(),
                    dateOfBirth: user.dob!.date.toString(),
                    email: user.email.toString(),
                    image: user.picture!.large.toString(),
                    phone: user.phone.toString(),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              );
            }
          },
        ),
      ),
    );
  }
}
