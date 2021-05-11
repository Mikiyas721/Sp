import 'package:sp_web/common/view_model.dart';

class EmployeesViewModel extends SimpleListViewModel {
  final String listFilter;
  final String searchFilter;

  EmployeesViewModel({
    bool isLoading,
    String loadingMessage,
    this.listFilter,
    this.searchFilter,
  }) : super(
          isLoading: isLoading,
          error: loadingMessage,
        );

  @override
  List<Object> get props =>
      [super.isLoading, super.error, listFilter, searchFilter];
}
