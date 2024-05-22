import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/domain/customers/entities/customer.dart';

import '../../../blocs/customer_actor/customer_actor_bloc.dart';

class CustomerDetailsAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomerDetailsAppbar({
    super.key,
    required this.customer,
  });

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Customer Details"),
      actions: [
        IconButton(
          onPressed: () {
            context.read<CustomerActorBloc>().add(CustomerActorEvent.deletePressed(customer));
            context.router.maybePop();
          },
          icon: const Icon(Icons.delete_forever),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
