// ignore_for_file: use_build_context_synchronously

/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_handyman/admin%20panel/navigation/bottomnavbar_admin.dart';
import 'package:flutter_handyman/user_state.dart';
//import 'package:ijob_clone_app/user_state.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepOrange.shade300, Colors.blueAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.2, 0.9],
        )
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(indexNum: 0,),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Jobs Screen"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepOrange.shade300, Colors.blueAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [0.2, 0.9],
                )
            ),
          ),
        ),
        body: ElevatedButton(
          onPressed: () async {
            await _auth.signOut();
            Navigator.canPop(context) ? Navigator.pop(context) : null;
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const UserState()));
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}*/
