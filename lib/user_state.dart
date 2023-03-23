import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_handyman/applicant%20panel/jobs/jobs_screen.dart';
import 'package:flutter_handyman/screens/users/login.dart';


class UserState extends StatelessWidget {
  const UserState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
        if(userSnapshot.data == null)
        {
          return LoginPage();
        } else if(userSnapshot.hasData)
        {
          return const JobsScreen();
        } else if(userSnapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text("An error has been occurred. Try again later."),
            ),
          );
        } else if(userSnapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: Text('Something went wrong'),
          ),
        );
        }
    );
  }
}
