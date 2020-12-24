import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('This works!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // ignore: deprecated_member_use
          Firestore.instance
              .collection('chats/Es6kcu2Tji3PMLgT3FKL/messages')
              .snapshots()
              .listen((data) {
            // ignore: deprecated_member_use
            data.documents.forEach((element) {
              print(element['text']);
            });
          });
        },
      ),
    );
  }
}
