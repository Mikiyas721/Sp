import 'package:flutter/material.dart';
import 'package:sp_client/presentation/widget/my_action_button.dart';
import '../model/item_request_view_model.dart';
import '../widget/my_text_field.dart';
import '../../common/extensions.dart';

class ItemRequestView extends StatelessWidget {
  final ItemRequestViewModel itemRequestViewModel;
  final void Function(String itemName) onItemNameChanged;
  final void Function(String itemCategory) onItemCategoryChanged;
  final void Function(String itemDescription) onItemDescriptionChanged;
  final VoidCallback onSubmit;

  const ItemRequestView(
      {Key key,
      @required this.itemRequestViewModel,
      @required this.onItemNameChanged,
      @required this.onItemCategoryChanged,
      @required this.onItemDescriptionChanged,
      @required this.onSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(
          hintText: "Name",
          errorText: itemRequestViewModel.itemNameError,
          onChanged: onItemNameChanged,
        ),
        15.0.vSpace,
        MyTextField(
          hintText: "Category",
          errorText: itemRequestViewModel.itemCategoryError,
          onChanged: onItemCategoryChanged,
        ),
        15.0.vSpace,
        MyTextField(
          hintText: "Description",
          errorText: itemRequestViewModel.itemDescriptionError,
          onChanged: onItemDescriptionChanged,
        ),
        20.0.vSpace,
        MyActionButton(label: "Submit", onClick: onSubmit)
      ],
    );
  }
}
