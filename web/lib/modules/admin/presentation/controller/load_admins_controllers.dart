import 'package:flutter/cupertino.dart';
import 'package:sp_web/common/controller/controller.dart';
import 'package:sp_web/common/debouncer.dart';
import 'package:sp_web/common/mixins/date_time_mixin.dart';
import 'package:sp_web/common/mixins/toast_mixin.dart';
import 'package:sp_web/injection.dart';
import 'package:sp_web/modules/admin/application/load_admins/load_admins_bloc.dart';
import 'package:sp_web/modules/admin/domain/use_cases/fetch_all_admins.dart';
import 'package:sp_web/modules/admin/domain/use_cases/fetch_filtered_admins.dart';
import 'package:sp_web/modules/admin/domain/use_cases/search_admin.dart';
import 'package:sp_web/modules/admin/presentation/models/admin_view_model.dart';
import '../../../../common/extensions.dart';

class LoadAdminsControllers extends BlocViewModelController<
    LoadAdminsBloc,
    LoadAdminsEvent,
    LoadAdminsState,
    AdminsViewModel> with ToastMixin, DateTimeMixin {
  final BuildContext context;

  LoadAdminsControllers(this.context)
      : super(getIt.get<LoadAdminsBloc>(), true);

  @override
  AdminsViewModel mapStateToViewModel(LoadAdminsState s) {
    return AdminsViewModel(
      error: s.loadFailure.getOrElse(() => null)?.message,
      data: s.admins
          .map<AdminViewModel>((e) => AdminViewModel(
                id: e.id,
                phoneNumber: e.phoneNumber.phoneNumber,
                password: e.password.password,
                privilegeType:
                    e.privilegeType.getString().getOrElse(() => null),
                createdAt: getShortDateString(e.createdAt),
                updatedAt: getShortDateString(e.updatedAt),
              ))
          .toList(),
      isLoading: s.isLoading,
      listFilter: s.filterString,
      searchFilter: s.searchFilter,
      searchString: s.searchString,
      isPerformingQuery: s.isFiltering,
    );
  }

  void loadInitial() async {
    bloc.add(LoadAdminsIsLoadingEvent());
    final response = await getIt.get<FetchAllAdmins>().execute();
    response.fold((l) {
      bloc.add(LoadAdminsFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadAdminsSucceededEvent(r));
    });
  }

  void onFilterChanged(String filter) async {
    bloc.add(LoadAdminsFilterChangedEvent(filter));
    final response = await getIt.get<FetchFilteredAdmins>().execute(filter);
    response.fold((l) {
      bloc.add(LoadAdminsFilterFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(LoadAdminsFilterSucceededEvent(r));
    });
  }

  void onSearchFilterChanged(String searchFilter) {
    bloc.add(LoadAdminsSearchFilterChanged(searchFilter));
  }

  void onSearch(String text) {
    bloc.add(LoadAdminsSearchTextChanged(text));
    DeBouncer().run(() async {
      final response =
          await getIt.get<SearchAdmin>().execute(bloc.state.searchFilter, text);
      response.fold((l) {
        bloc.add(LoadAdminsFilterFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(LoadAdminsFilterSucceededEvent(r));
      });
    });
  }

  void onOpen(AdminViewModel adminViewModel) {}

  void onEdit(AdminViewModel adminViewModel) {}

  void onDelete(AdminViewModel adminViewModel) {}

  void onAdd(AdminViewModel adminViewModel) {}
}
