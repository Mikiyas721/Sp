import 'package:sp_web/common/view_model.dart';

class EmployeesViewModel extends PaginatedDataTableViewModel {
  EmployeesViewModel({
    String error,
    List<Object> data, // TODO replace with employee
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
