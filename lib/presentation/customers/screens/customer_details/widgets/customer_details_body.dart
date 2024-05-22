import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../domain/customers/entities/customer.dart';
import 'customer_info_tile.dart';

class CustomerDetailsBody extends StatelessWidget {
  const CustomerDetailsBody({
    super.key,
    required this.customer,
  });

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CustomerInfoTile(
              leadingIcon: Icons.person,
              overlineText: "Customer Name",
              mainText: customer.name,
              onTap: () {},
            ),
            SizedBox(height: 8),
            CustomerInfoTile(
              leadingIcon: Icons.phone,
              overlineText: "Phone Number",
              mainText: customer.phoneNumber,
              onTap: () {},
            ),
            SizedBox(height: 8),
            CustomerInfoTile(
              leadingIcon: Icons.email,
              overlineText: "Email Address",
              mainText: customer.email,
              onTap: () {},
            ),
            SizedBox(height: 8),
            CustomerInfoTile(
              leadingIcon: Icons.location_on,
              overlineText: "Location",
              mainText: "Karbala, Saif Saad",
              onTap: () {},
            ),
            SizedBox(height: 8),
            CustomerInfoTile(
              leadingIcon: Icons.date_range,
              overlineText: "Date Added",
              mainText: DateFormat("yyyy-MM-dd").format(customer.dateAdded),
              onTap: () {},
            ),
            SizedBox(height: 8),
            CustomerInfoTile(
              leadingIcon: Icons.tag,
              overlineText: "Tags",
              mainText: customer.tags.join(", "),
              onTap: () {},
            ),
            SizedBox(height: 8),
            CustomerInfoTile(
              leadingIcon: Icons.info,
              overlineText: "Additional Info",
              mainText: customer.notes,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
