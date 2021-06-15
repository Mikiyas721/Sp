import 'package:flutter/material.dart';
import '../model/item_request_view_model.dart';
import '../views/item_request_view.dart';
import '../../../../common/extensions.dart';

class ItemRequestPage extends StatelessWidget {
  static final String routeName = "/itemRequestPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight,
          padding: 20.0.hPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Enter item details",
                style: context.headline1,
              ),
              20.0.vSpace,
              ItemRequestView(
                  itemRequestViewModel: ItemRequestViewModel(
                      itemName: null,
                      itemNameError: null,
                      itemCategory: null,
                      itemCategoryError: null,
                      itemDescription: null,
                      itemDescriptionError: null,
                      hasSubmitted: null,
                      isSigningIn: null),
                  onItemNameChanged: null,
                  onItemCategoryChanged: null,
                  onItemDescriptionChanged: null,
                  onSubmit: (){})
            ],
          ),
        ),
      ),
    );
  }
}
