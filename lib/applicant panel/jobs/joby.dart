// ignore_for_file: use_build_context_synchronously

/*import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_handyman/admin%20panel/navigation/bottomnavbar_admin.dart';
import 'package:flutter_handyman/admin%20panel/persistent/persistent.dart';
import 'package:flutter_handyman/applicant%20panel/jobs/job_widget.dart';
import 'package:flutter_handyman/applicant%20panel/jobs/search/search_job.dart';
import 'package:flutter_handyman/user_state.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  String? jobCategoryFilter;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  _showTaskCategoriesDialog({required Size size}) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: Colors.black54,
            title: const Text(
              'Job Category',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            content: Container(
              width: size.width * 0.9,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Persistent.jobCategoryList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        jobCategoryFilter = Persistent.jobCategoryList[index];
                      });
                      Navigator.canPop(context) ? Navigator.pop(context) : null;
                      print(
                          'jobCategoryList [index], ${Persistent.jobCategoryList[index]}');
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            Persistent.jobCategoryList[index],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: const Text(
                  'close',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      jobCategoryFilter = null;
                    });
                    Navigator.canPop(context) ? Navigator.pop(context) : null;
                  },
                  child: Text(
                    'cancel filter',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.deepOrange.shade300, Colors.blueAccent],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: const [0.2, 0.9],
      )),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(
          indexNum: 0,
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange.shade300, Colors.blueAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.2, 0.9],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.filter_list_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              _showTaskCategoriesDialog(size: size);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
          ],
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection('jobs')
              .where('jobCategory', isEqualTo: jobCategoryFilter)
              .where('recruitment', isEqualTo: true)
              .orderBy('createdAt', descending: false)
              .snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.active)
             {
              if (snapshot.data?.docs.isNotEmpty == true) 
              {
                return ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return JobWidget(
                        jobTitle: snapshot.data?.docs[index]['jobTitle'],
                        jobDescription: snapshot.data?.docs[index]['jobDescription'],
                        jobId: snapshot.data?.docs[index]['jobId'],
                        uploadedBy: snapshot.data?.docs[index]['uploadedBy'],
                        userImage: snapshot.data?.docs[index]['userImage'],
                        name: snapshot.data?.docs[index]['name'],
                        recruitment: snapshot.data?.docs[index]['recruitment'],
                        email: snapshot.data?.docs[index]['email'],
                        lacation: snapshot.data?.docs[index]['lacation'],
                      );
                    }
                    );
              } else {
                return const Center(
                  child: Text("No jobs at this time"),
                );
              }
            }
            return const Center(
              child: Text(
                'something went wrong',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            );
          },
        ),
        /* body: ElevatedButton(
          onPressed: () async {
            await _auth.signOut();
            Navigator.canPop(context) ? Navigator.pop(context) : null;
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const UserState()));
          },
          child: const Text('Logout'),
        ),*/
      ),
    );
  }
}*/