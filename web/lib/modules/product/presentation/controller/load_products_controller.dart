import 'package:flutter/cupertino.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/debouncer.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/product/domain/use_cases/fetch_all_available.dart';
import 'package:sp_web/modules/product/domain/use_cases/fetch_by_category.dart';
import 'package:sp_web/modules/product/domain/use_cases/fetch_most_sold.dart';
import 'package:sp_web/modules/product/domain/use_cases/fetch_near_expiration.dart';
import 'package:sp_web/modules/product/domain/use_cases/fetch_running_low.dart';
import 'package:sp_web/modules/product/domain/use_cases/search_product.dart';
import 'package:sp_web/modules/product/presentation/models/product_view_model.dart';
import '../../application/load_products/load_products_bloc.dart';

class LoadProductsController extends BlocViewModelController<
    LoadProductsBloc,
    LoadProductsEvent,
    LoadProductsState,
    ProductListViewModel> with ToastMixin {
  final BuildContext context;

  LoadProductsController(this.context)
      : super(getIt.get<LoadProductsBloc>(), true);

  @override
  ProductListViewModel mapStateToViewModel(LoadProductsState s) {
    return ProductListViewModel(
      isLoading: s.isLoading,
      error: s.loadFailure.getOrElse(() => null)?.message,
      data: s.products.map((e) => ProductViewModel()),
      searchText: s.searchString,
      filter: s.filterString,
      category: s.category,
      isPerformingQuery: s.isFiltering,
    );
  }

  void loadInitial() async {
    bloc.add(LoadProductsIsLoadingEvent());
    final response = await getIt.get<FetchAllAvailable>().execute();
    response.fold((l) {
      bloc.add(LoadProductsFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadProductsSucceededEvent(r));
    });
  }

  void onFilterChanged(String value) {
    if (value == "in stock" && bloc.state.filterString != "in stock") {
      _loadInStock(value);
    } else if (value == "most sold" && bloc.state.filterString != "most sold") {
      _loadMostSold(value);
    } else if (value == "running low" &&
        bloc.state.filterString != "running low") {
      _loadRunningLow(value);
    } else if (value == "near expiration" &&
        bloc.state.filterString != "near expiration") {
      _loadNearExpiration(value);
    }
  }

  void onCategoryChanged(String value) async {
    bloc.add(LoadProductsCategoryChangedEvent(value));
    final response = await getIt.get<FetchByCategory>().execute(value);
    response.fold((l) {
      bloc.add(LoadProductsFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadProductsFilterSucceededEvent(r));
    });
  }

  void onSearch(String value) {
    bloc.add(LoadProductsSearchTextChanged(value));
    DeBouncer().run(() async {
      final response = await getIt
          .get<SearchProduct>()
          .execute(bloc.state.searchFilter, value);
      response.fold((l) {
        bloc.add(LoadProductsFilterFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(LoadProductsFilterSucceededEvent(r));
      });
    });
  }

  void _loadInStock(String value) async {
    bloc.add(LoadProductsFilterChangedEvent(value));
    final response = await getIt.get<FetchAllAvailable>().execute();
    response.fold((l) {
      bloc.add(LoadProductsFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadProductsFilterSucceededEvent(r));
    });
  }

  void _loadMostSold(String value) async {
    bloc.add(LoadProductsFilterChangedEvent(value));
    final response = await getIt.get<FetchMostSold>().execute();
    response.fold((l) {
      bloc.add(LoadProductsFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadProductsFilterSucceededEvent(r));
    });
  }

  void _loadRunningLow(String value) async {
    bloc.add(LoadProductsFilterChangedEvent(value));
    final response = await getIt.get<FetchRunningLow>().execute();
    response.fold((l) {
      bloc.add(LoadProductsFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadProductsFilterSucceededEvent(r));
    });
  }

  void _loadNearExpiration(String value) async {
    bloc.add(LoadProductsFilterChangedEvent(value));
    final response = await getIt.get<FetchNearExpiration>().execute();
    response.fold((l) {
      bloc.add(LoadProductsFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadProductsFilterSucceededEvent(r));
    });
  }
}
