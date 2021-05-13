import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/empty_error_view.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/common/widgets/my_loading_view.dart';
import 'package:sp_web/presentation/models/product_view_model.dart';
import '../../common/extensions.dart';

class ProductListView extends StatelessWidget {
  final ProductListViewModel productListViewModel;
  final VoidCallback onReload;

  const ProductListView({Key key, this.productListViewModel, this.onReload})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleGridView<ProductViewModel>(
      model: productListViewModel,
      itemBuilder: (BuildContext context, ProductViewModel model) {
        return ProductView(productViewModel: model);
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

class ProductView extends StatelessWidget {
  final ProductViewModel productViewModel;

  const ProductView({
    Key key,
    @required this.productViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          width: 250,
          height: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(productViewModel.imageUrl),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15))),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 10,
                  bottom: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productViewModel.name,
                      style: context.headline5,
                    ),
                    Text(
                      productViewModel.category,
                      style: context.caption,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
