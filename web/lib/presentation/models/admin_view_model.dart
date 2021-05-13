import 'package:sp_web/common/view_model.dart';

class AdminViewModel extends PaginatedDataTableViewModel {
  AdminViewModel({
    String error,
    List<Object> data, // TODO replace with admin
    bool isLoading,
    String listFilter,
    String searchFilter,
    bool isPerformingQuery,
  }) : super(
    error: error,
    data: data,
    isLoading: isLoading,
    listFilter: listFilter,
    searchFilter: searchFilter,
    isPerformingQuery: isPerformingQuery,
  );
}