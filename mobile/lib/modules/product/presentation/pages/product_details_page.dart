import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/product_detail_view_model.dart';
import '../../../../common/extensions.dart';

class ProductDetailsPage extends StatelessWidget {
  static const String routeName = "/product-detail-page";
  final ProductDetailViewModel productDetail;

  ProductDetailsPage(this.productDetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.screenHeight - (context.paddingTop + 20),
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            return Column(
              //This column is overflowing
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: constraints.maxHeight * 0.4,
                  child: Image.network(
                    productDetail.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                10.5.vSpace,
                Container(
                  padding: 15.0.hPadding,
                  child: Text(
                    productDetail.title,
                    style: context.headline1,
                  ),
                ),
                Container(
                  padding: 15.0.hPadding,
                  height: constraints.maxHeight * 0.18,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 14 / 2,
//                    mainAxisSpacing: 3,
                    children: [
                      Text("Quantity"),
                      Text(productDetail.quantity.toString()),
                      Text("Manufactured Date"),
                      Text(DateFormat.yMd().format(productDetail.manDate)),
                      Text("Expiration Date"),
                      Text(DateFormat.yMd().format(productDetail.expDate)),
                    ],
                  ),
                ),
                Container(
                  padding: 15.0.hPadding,
                  child: Text("Description"),
                ),
                6.0.vSpace,
                Container(
                  height: constraints.maxHeight * 0.3,
                  padding: 15.0.hPadding,
                  child: SingleChildScrollView(
                    child: Text(
                      """${productDetail.description}""",
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
