import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sp_client/common/widget/empty_error_view.dart';
import 'package:sp_client/common/widget/my_loading_view.dart';
import 'package:sp_client/common/widget/simple_list_view.dart';
import 'package:sp_client/modules/product/presentation/model/category_view_model.dart';
import '../../../../common/extensions.dart';

class CategoryProductsView extends StatelessWidget {
  final CategoryProductsViewModel categoryProductsViewModel;
  final VoidCallback onReload;

  const CategoryProductsView({
    Key key,
    @required this.categoryProductsViewModel,
    this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<CategoryProductViewModel>(
      model: categoryProductsViewModel,
      itemBuilder: (BuildContext context, CategoryProductViewModel model) {
        return CategoryProductView(categoryProductViewModel: model);
      },
      errorView: Center(
          child: EmptyErrorView.defaultError(
            onAction: onReload,
          )),
      loadingView: Center(child: MyLoadingView()),
      emptyView: Center(
        child: EmptyErrorView.defaultEmpty(),
      ),
    );
  }
}

class CategoryProductView extends StatelessWidget {
  final CategoryProductViewModel categoryProductViewModel;

  CategoryProductView({this.categoryProductViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        child: LayoutBuilder(builder: (_, constraint) {
          return Row(
            children: [
              Container(
                height: constraint.maxHeight,
                width: constraint.maxWidth * 0.4,
                child: Image.network(categoryProductViewModel.imageUrl,
                    fit: BoxFit.cover),
              ),
              10.0.hSpace,
              Padding(
                padding: 15.0.topPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryProductViewModel.itemName,
                      style: context.headline6,
                    ),
                    4.0.vSpace,
                    Row(
                      children: [
                        Icon(Icons.shopping_cart),
                        3.0.hSpace,
                        Text(
                          categoryProductViewModel.quantity.toString(),
                        ),
                      ],
                    ),
                    5.0.vSpace,
                    Container(
                      width: constraint.maxWidth * 0.5,
                      child: Text(
                        DateFormat.yMd().format(categoryProductViewModel.date),
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
