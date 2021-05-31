import 'package:sp_web/common/view_model.dart';

class CustomerViewModel extends PaginatedDataTableViewModel {
  CustomerViewModel({
    String error,
    List<Object> data, // TODO replace with client
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