import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fractastic/ui/services/Authenticate.dart';
import 'package:provider/provider.dart';
import 'package:fractastic/ui/home/ClassList.dart';

class classListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: FireStoreUtils().classes,
      child: Scaffold(
        body: ClassList(),
      ),
    );
  }
}
