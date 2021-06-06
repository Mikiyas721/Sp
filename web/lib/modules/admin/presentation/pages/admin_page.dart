import 'package:flutter/material.dart';
import 'package:sp_web/common/controller/controller_provider.dart';
import 'package:sp_web/common/widgets/multiScroller.dart';
import 'package:sp_web/modules/admin/presentation/controller/load_admins_controllers.dart';
import 'package:sp_web/modules/admin/presentation/models/admin_view_model.dart';
import 'package:sp_web/modules/admin/presentation/views/admin_view.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';

class AdminsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MyDrawer(index: 2),
          MultiScroller(
            child: ViewModelBuilder.withController<AdminsViewModel,
                    LoadAdminsControllers>(
                create: () => LoadAdminsControllers(context),
                onInit: (controller) => controller.loadInitial(),
                builder: (context, controller, model) {
                  return AdminView(
                    adminsViewModel: model,
                    onFilterChanged: controller.onFilterChanged,
                    onSearchFilterChanged: controller.onSearchFilterChanged,
                    onSearch: controller.onSearch,
                    onOpen: controller.onOpen,
                    onEdit: controller.onEdit,
                    onDelete: controller.onDelete,
                    onAdd: controller.onAdd,
                    onReload: controller.loadInitial,
                  );
                }),
          )
        ],
      ),
    );
  }
}
