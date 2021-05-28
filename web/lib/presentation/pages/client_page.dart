import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/client_view_model.dart';
import 'package:sp_web/presentation/views/client_view.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';

class ClientPage extends StatelessWidget {
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
            child: ClientView(
              clientViewModel: ClientViewModel(
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
