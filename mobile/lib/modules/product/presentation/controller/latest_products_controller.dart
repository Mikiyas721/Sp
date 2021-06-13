import 'package:flutter/cupertino.dart';
import 'package:sp_client/common/controller/controller.dart';
import 'package:sp_client/injection.dart';
import 'package:sp_client/modules/product/application/load_products/load_products_bloc.dart';
import 'package:sp_client/modules/product/presentation/model/latest_products_view_model.dart';

class LatestProductsController extends BlocViewModelController<LoadProductsBloc,
    LoadProductsEvent, LoadProductsState, LatestProductsViewModel> {
  final BuildContext context;
  LatestProductsController(this.context) : super(getIt.get<LoadProductsBloc>(), true);

  void loadLatest() {}

  @override
  LatestProductsViewModel mapStateToViewModel(LoadProductsState s) {
    throw UnimplementedError();
  }
}
