import 'package:flutter/material.dart';

class CustomerInfoTile extends StatelessWidget {
  const CustomerInfoTile({
    super.key,
    required this.leadingIcon,
    required this.overlineText,
    required this.mainText,
    this.onTap,
  });

  final IconData leadingIcon;
  final String overlineText;
  final String mainText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overlineText,
            style: TextStyle(fontSize: 12),
          ),
          Text(mainText),
        ],
      ),
      trailing: InkWell(
        child: SizedBox(
          child: Icon(Icons.edit),
          width: 56,
          height: 56,
        ),
        onTap: onTap,
      ),
    );
  }
}