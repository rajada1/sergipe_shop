import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ExtraPage extends StatefulWidget {
  const ExtraPage({Key? key}) : super(key: key);

  @override
  _ExtraPageState createState() => _ExtraPageState();
}

User currentUser = FirebaseAuth.instance.currentUser!;

class _ExtraPageState extends State<ExtraPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
