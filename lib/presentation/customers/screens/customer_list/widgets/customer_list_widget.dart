import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routes/app_router.dart';

class CustomerListWidget extends StatelessWidget {
  const CustomerListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 14,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Ali Waseem Mohammed"),
          subtitle: Text("Saif Saad" + ", " + "Medium"),
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text(
              "AW",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          onTap: () => context.router.push(const CustomerDetailsRoute()),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
