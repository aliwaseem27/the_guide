import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/app_router.dart';
import '../../../blocs/customer_watcher/customer_watcher_bloc.dart';

class CustomerListWidget extends StatelessWidget {
  const CustomerListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerWatcherBloc, CustomerWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            loaded: (loadedState) => ListView.separated(
                  itemCount: loadedState.customers.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(loadedState.customers[index].name),
                      subtitle: Text(loadedState.customers[index].tags.join(", ")),
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Text(
                          loadedState.customers[index].name[0],
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
                    return const Divider();
                  },
                ),
            error: (_) => const Center(child: Text("Something went wrong")));
      },
    );
  }
}
