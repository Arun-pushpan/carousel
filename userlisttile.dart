import 'package:flutter/material.dart';

import '../../constants/color.dart';
import 'text_widget.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    this.ontap,
  });
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
            leading: Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), color: Colors.amber),
            ),
            title: const Text(
    "Arun Pushpan",
    style: TextStyle(
        fontSize: 16, color: Colours.rWhite, fontWeight: FontWeight.w500),
            ),
            subtitle: const ReachOutText(
    rText: "Flutter Developer",
    rSize: 12,
            ),
            trailing: const ReachOutText(
    rText: "Dec 21",
    rSize: 12,
            ),
  );
 }
}
