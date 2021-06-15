import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/empty_error_view.dart';
import 'package:sp_web/common/widgets/list_view.dart';
import 'package:sp_web/common/widgets/my_loading_view.dart';
import 'package:sp_web/common/widgets/border_text_field.dart';
import 'package:sp_web/common/widgets/my_dropdown.dart';
import 'package:sp_web/config/config.definition.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/product/presentation/models/product_view_model.dart';
import '../../../../common/common.dart';

class ProductListView extends StatelessWidget {
  final ProductListViewModel productListViewModel;
  final VoidCallback onReload;
  final void Function(String value) onSearch;
  final void Function(String value) onFilterChanged;
  final void Function(String value) onCategoryChanged;

  const ProductListView({
    Key key,
    @required this.productListViewModel,
    this.onReload,
    this.onSearch,
    this.onFilterChanged,
    this.onCategoryChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (productListViewModel.isLoading) return Center(child: MyLoadingView());
    if (productListViewModel.error != null)
      return Center(
          child: EmptyErrorView.defaultError(
        onAction: onReload,
        description: productListViewModel.error,
      ));
    if (productListViewModel.isEmpty)
      return Center(
          child: EmptyErrorView.defaultEmpty(
        onAction: onReload,
        description: 'You have no products',
      ));
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(top: 60),
      child: Container(
	    constraints:BoxConstraints(minHeight:700),
        padding: EdgeInsets.only(left: 20, right: 15, top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Text(
                  'Products',
                  style: context.headline6,
                ),
                Spacer(),
                Container(
                  width: 20,
                  height: 20,
                  child: productListViewModel.isPerformingQuery
                      ? CircularProgressIndicator()
                      : Container(
                          height: 0,
                          width: 0,
                        ),
                ),
                5.hSpace,
                BorderTextField(
                  onChanged: onSearch,
                  width: 300,
                  hintText: 'Search',
                ),
                10.hSpace,
                MyDropdown(
                  hint: 'filter',
                  items: [
                    'in stock',
                    'most sold',
                    'running low',
                    'near expiration',
                  ],
                  currentItem: productListViewModel.filter,
                  onChanged: onFilterChanged,
                ),
                10.hSpace,
                MyDropdown(
                  hint: 'category',
                  items: CategoryExtension.categoryList,
                  currentItem: productListViewModel.category,
                  onChanged: onCategoryChanged,
                ),
              ],
            ),
            15.vSpace,
            Container(
              width: (MediaQuery.of(context).size.width) * 0.78,
              child: SimpleGridView<ProductViewModel>(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
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
              ),
            )
          ],
        ),
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
                        image: NetworkImage(
                            '${getIt.get<ConfigDefinition>().apiUrl}/containers/product/download/${productViewModel.imageName}'),
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
                      productViewModel.productName,
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
