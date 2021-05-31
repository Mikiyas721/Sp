import 'package:flutter/material.dart';
import 'package:sp_web/modules/customer/presentation/models/customer_view_model.dart';
import 'package:sp_web/modules/customer/presentation/views/customer_view.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MyDrawer(
            index: 3,
          ),
          Scrollbar(
              child: SingleChildScrollView(
            child: CustomerView(
              clientViewModel: CustomerViewModel(
                isLoading: false,
                isPerformingQuery: false,
              ),
              onFilterChanged: (String filter){},
            ),
          ))
        ],
      ),
    );
  }
}
