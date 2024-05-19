import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_guide/core/app_core.dart';

import '../../../../core/routes/app_router.dart';

@RoutePage()
class CustomerListScreen extends StatelessWidget {
  const CustomerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppSizes.defaultSpace, right: AppSizes.defaultSpace, top: AppSizes.appBarHeight),
      child: Stack(
        children: [
          ListView.separated(
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
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () => context.router.push(const AddCustomerRoute()),
                child: Text("Add Customer"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
