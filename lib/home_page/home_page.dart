import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sergipe_shop/login_page/login_page.dart';
import 'package:sergipe_shop/extra_page/extra_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;

  sair() async {
    await auth.signOut();
    await GoogleSignIn().signOut();
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(
            homePage: true,
          ),
        ));
  }

//  User curentuser = FirebaseAuth.instance.currentUser!;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Firebase AuthTest'),
        actions: [
          IconButton(
            onPressed: () {
              sair();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          Text(currentUser.email ?? ''),
          Image.network(currentUser.photoURL ??
              'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/587a10af-49d8-4a65-84d9-757bac1f18ce/e626ea61-d938-4701-aeff-9927881d7f7b.png')
        ],
      ),
    );
  }
}
