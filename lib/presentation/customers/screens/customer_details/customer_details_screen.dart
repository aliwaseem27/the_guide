import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/domain/customers/entities/customer.dart';
import 'package:the_guide/injection.dart';

import '../../blocs/customer_actor/customer_actor_bloc.dart';
import 'widgets/customer_details_appbar.dart';
import 'widgets/customer_details_body.dart';

@RoutePage()
class CustomerDetailsScreen extends StatelessWidget {
  const CustomerDetailsScreen({super.key, required this.customer});

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomerActorBloc>(),
      child: Scaffold(
        appBar: CustomerDetailsAppbar(customer: customer),
        body: CustomerDetailsBody(customer: customer),
      ),
    );
  }
}
