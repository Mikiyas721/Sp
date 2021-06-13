import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sp_client/common/widget/empty_error_view.dart';
import 'package:sp_client/common/widget/my_loading_view.dart';
import 'package:sp_client/common/widget/simple_list_view.dart';
import 'package:sp_client/modules/product/presentation/model/latest_products_view_model.dart';
import '../../../../common/extensions.dart';

class LatestProductsView extends StatelessWidget {
  final LatestProductsViewModel latestProductsViewModel;
  final VoidCallback onReload;

  const LatestProductsView({
    Key key,
    @required this.latestProductsViewModel,
    this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<LatestProductViewModel>(
      model: latestProductsViewModel,
      itemBuilder: (BuildContext context, LatestProductViewModel model) {
        return LatestProductView(latestProductViewModel: model);
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

class LatestProductView extends StatelessWidget {
  final LatestProductViewModel latestProductViewModel;

  LatestProductView({this.latestProductViewModel});

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
                child: Image.network(latestProductViewModel.imageUrl,
                    fit: BoxFit.cover),
              ),
              10.0.hSpace,
              Padding(
                padding: 15.0.topPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      latestProductViewModel.itemName,
                      style: context.headline6,
                    ),
                    4.0.vSpace,
                    Row(
                      children: [
                        Icon(Icons.shopping_cart),
                        3.0.hSpace,
                        Text(
                          latestProductViewModel.quantity.toString(),
                        ),
                      ],
                    ),
                    5.0.vSpace,
                    Container(
                      width: constraint.maxWidth * 0.5,
                      child: Text(
                        DateFormat.yMd().format(latestProductViewModel.date),
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
