import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/core/app_core.dart';
import 'package:the_guide/injection.dart';
import 'package:the_guide/presentation/customers/blocs/customer_watcher/customer_watcher_bloc.dart';

import '../../../../core/routes/app_router.dart';
import 'widgets/customer_list_widget.dart';

@RoutePage()
class CustomerListScreen extends StatelessWidget {
  const CustomerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomerWatcherBloc>(
      create: (context) => getIt<CustomerWatcherBloc>(),
      child: Padding(
        padding: const EdgeInsets.only(
            left: AppSizes.defaultSpace, right: AppSizes.defaultSpace, top: AppSizes.appBarHeight),
        child: Stack(
          children: [
            CustomerListWidget(),
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
      ),
    );
  }
}

