import 'package:flutter/material.dart';
import 'package:sp_web/common/controller/controller_provider.dart';
import 'package:sp_web/modules/customer/presentation/controller/load_customers_controller.dart';
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
            child: ViewModelBuilder.withController<CustomersViewModel,
                    LoadCustomersController>(
                create: () => LoadCustomersController(context),
                onInit: (controller)=>controller.loadInitial(),
                builder: (context, controller, model) {
                  return CustomersView(
                    clientViewModel: model,
                    onFilterChanged: controller.onFilterChanged,
                    onSearchFilterChanged: controller.onSearchFilterChanged,
                    onSearch: controller.onSearch,
                    onViewComments: controller.onViewComments,
                    onBlock: controller.onBlock,
                    onReload: controller.loadInitial,
                  );
                }),
          ))
        ],
      ),
    );
  }
}
