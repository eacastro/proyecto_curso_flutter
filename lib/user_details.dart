import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final List<Widget> details;

  UserDetails({
    @required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: details,
    );
  }
}
