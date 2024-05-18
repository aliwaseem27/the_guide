import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CustomerDetailsScreen extends StatelessWidget {
  const CustomerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CustomerInfoTile(
                leadingIcon: Icons.person,
                overlineText: "Customer Name",
                mainText: "Ali Waseem Mohammed",
                onTap: () {},
              ),
              SizedBox(height: 8),
              CustomerInfoTile(
                leadingIcon: Icons.phone,
                overlineText: "Phone Number",
                mainText: "078 123 4567",
                onTap: () {},
              ),
              SizedBox(height: 8),
              CustomerInfoTile(
                leadingIcon: Icons.email,
                overlineText: "Email Address",
                mainText: "ali.waseem27@gmail.com",
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
                mainText: "24/02/2024",
                onTap: () {},
              ),
              SizedBox(height: 8),
              CustomerInfoTile(
                leadingIcon: Icons.tag,
                overlineText: "Tags",
                mainText: "Supermarket, Medium Importance",
                onTap: () {},
              ),
              SizedBox(height: 8),
              CustomerInfoTile(
                leadingIcon: Icons.info,
                overlineText: "Additional Info",
                mainText: "This is multi line text info about notes can be added about the customer",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
