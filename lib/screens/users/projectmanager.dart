import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_handyman/admin%20panel/job%20posting/upload_job.dart';

import 'login.dart';

class ProjectManager extends StatefulWidget {
  const ProjectManager({super.key});

  @override
  State<ProjectManager> createState() => _ProjectManager();
}

class _ProjectManager extends State<ProjectManager> {
  @override
  Widget build(BuildContext context) {
    return UploadJobNow(
    /*  appBar: AppBar(
        title: const Text("Project Manager"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),*/
    
    );
  }


  Future<void> logout(BuildContext context) async {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}