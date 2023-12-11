import 'package:flutter/material.dart';
import 'package:head_start/constants/application.dart';
import 'package:ionicons/ionicons.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
        backgroundColor: CColor.gry3,
      ),
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text('Vanilla Icons', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          _defaultRow(),
          const SizedBox(height: 10),
          const Text('Ion Icons', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          _ionRow()
        ],
      ),
    );
  }

  Row _ionRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _iconContainer(Ionicons.person, Ionicons.person_outline),
        _iconContainer(Ionicons.mail, Ionicons.mail_open_outline),
        _iconContainer(Ionicons.accessibility, Ionicons.accessibility_outline),
        _iconContainer(Ionicons.push_outline, Ionicons.push_outline),
        _iconContainer(Ionicons.home, Ionicons.home_outline),
        _iconContainer(Ionicons.share_social, Ionicons.share_social_outline),
      ],
    );
  }

  Row _defaultRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _iconContainer(Icons.person_4, Icons.person_4_outlined),
        _iconContainer(Icons.mail, Icons.mail_outline),
        _iconContainer(Icons.access_time_filled_outlined, Icons.access_time_outlined),
        _iconContainer(Icons.phone, Icons.phone_outlined),
        _iconContainer(Icons.home, Icons.home_outlined),
        _iconContainer(Icons.add_circle, Icons.add_circle_outline),
      ],
    );
  }

  Container _iconContainer(IconData active, IconData passive) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: CColor.gry3),
        height: 50,
        width: 50,
        child: Row(
          children: [
            Icon(active),
            Icon(passive),
          ],
        ));
  }
}
