import 'package:flutter/cupertino.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/debouncer.dart';
import 'package:sp_web/common/mixins/date_time_mixin.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/customer/application/load_customers/load_customers_bloc.dart';
import 'package:sp_web/modules/customer/domain/use_cases/fetch_active_customers.dart';
import 'package:sp_web/modules/customer/domain/use_cases/fetch_all_customers.dart';
import 'package:sp_web/modules/customer/domain/use_cases/fetch_new_customers.dart';
import 'package:sp_web/modules/customer/domain/use_cases/search_customer.dart';
import 'package:sp_web/modules/customer/presentation/models/customer_view_model.dart';

class LoadCustomersController extends BlocViewModelController<
    LoadCustomersBloc,
    LoadCustomersEvent,
    LoadCustomersState,
    CustomersViewModel> with ToastMixin, DateTimeMixin {
  final BuildContext context;

  LoadCustomersController(this.context)
      : super(getIt.get<LoadCustomersBloc>(), true);

  @override
  CustomersViewModel mapStateToViewModel(LoadCustomersState s) {
    return CustomersViewModel(
      error: s.loadFailure.getOrElse(() => null)?.message,
      data: s.customers
          .map<CustomerViewModel>((e) => CustomerViewModel(
                id: e.id,
                name: e.name.name,
                phoneNumber: e.phoneNumber.phoneNumber,
                email: e.email.email,
                photoUrl: e.photoUrl.imageUrl,
                createdAt: getShortDateString(e.createdAt),
                updatedAt: getShortDateString(e.updatedAt),
              ))
          .toList(),
      isLoading: s.isLoading,
      listFilter: s.filterString,
      searchFilter: s.searchFilterString,
      searchString: s.searchString,
      isPerformingQuery: s.isFiltering,
    );
  }

  void loadInitial() async {
    bloc.add(LoadCustomersIsLoadingEvent());
    final response = await getIt.get<FetchAllCustomers>().execute();
    response.fold((l) {
      bloc.add(LoadCustomersFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadCustomersSucceededEvent(r));
    });
  }

  void onFilterChanged(String filter) async {
    if (filter == 'All') {
      bloc.add(LoadCustomersFilterChangedEvent(filter));
      _loadAll();
    } else if (filter == 'Active') {
      bloc.add(LoadCustomersFilterChangedEvent(filter));
      _loadActive();
    } else if (filter == 'New') {
      bloc.add(LoadCustomersFilterChangedEvent(filter));
      _loadNew();
    }
  }

  void onSearchFilterChanged(String searchFilter) {
    bloc.add(LoadCustomersSearchFilterChanged(searchFilter));
  }

  void onSearch(String text) {
    bloc.add(LoadCustomersSearchTextChanged(text));
    DeBouncer().run(() async {
      final response = await getIt
          .get<SearchCustomer>()
          .execute(bloc.state.searchFilterString, text);
      response.fold((l) {
        bloc.add(LoadCustomersFilterFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(LoadCustomersFilterSucceededEvent(r));
      });
    });
  }

  void onViewComments(CustomerViewModel customerViewModel) {}

  void onBlock(CustomerViewModel customerViewModel) {}

  void _loadAll() async {
    final response = await getIt.get<FetchAllCustomers>().execute();
    response.fold((l) {
      bloc.add(LoadCustomersFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadCustomersFilterSucceededEvent(r));
    });
  }

  void _loadActive() async {
    final response = await getIt.get<FetchActiveCustomers>().execute();
    response.fold((l) {
      bloc.add(LoadCustomersFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadCustomersFilterSucceededEvent(r));
    });
  }

  void _loadNew() async {
    final response = await getIt.get<FetchNewCustomers>().execute();
    response.fold((l) {
      bloc.add(LoadCustomersFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadCustomersFilterSucceededEvent(r));
    });
  }
}
