import 'package:flutter/cupertino.dart';
import 'package:sp_client/common/controller/controller.dart';
import 'package:sp_client/common/mixins/toast_mixin.dart';
import 'package:sp_client/injection.dart';
import 'package:sp_client/modules/product/application/load_latest_products/load_latest_products_bloc.dart';
import 'package:sp_client/modules/product/domain/use_cases/fetch_latest.dart';
import 'package:sp_client/modules/product/presentation/model/latest_products_view_model.dart';

class LatestProductsController extends BlocViewModelController<
    LoadLatestProductsBloc,
    LoadLatestProductsEvent,
    LoadLatestProductsState,
    LatestProductsViewModel> with ToastMixin {
  final BuildContext context;

  LatestProductsController(this.context)
      : super(getIt.get<LoadLatestProductsBloc>(), true);

  @override
  LatestProductsViewModel mapStateToViewModel(LoadLatestProductsState s) {
    return LatestProductsViewModel(
      list: s.products.map((e) => LatestProductViewModel(
            id: e.id,
            itemName: e.productName.name,
            quantity: e.quantity.quantity,
            imageUrl: e.imageName.imageName,
            date: e.createdAt,
          )),
      loadingError: s.loadFailure.getOrElse(() => null)?.message,
      isLoading: s.isLoading,
    );
  }

  void loadLatest() async {
    bloc.add(LoadLatestProductsIsLoadingEvent());
    final result = await getIt.get<FetchLatest>().execute();
    result.fold((l) {
      bloc.add(LoadLatestProductsFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadLatestProductsSucceededEvent(r));
    });
  }
}
