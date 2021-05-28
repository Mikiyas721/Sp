import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:sp_web/common/widgets/border_text_field.dart';
import './my_dropdown.dart';

import '../view_model.dart';
import 'empty_error_view.dart';
import 'my_loading_view.dart';
import '../../common/extensions.dart';

class EmptyErrorLoadingView<T> extends StatelessWidget {
  final EmptyErrorLoadingViewModel<T> model;
  final Widget Function(BuildContext, T) builder;
  final Widget errorView;
  final Widget loadingView;
  final Widget emptyView;

  const EmptyErrorLoadingView({
    Key key,
    @required this.model,
    @required this.builder,
    @required this.errorView,
    @required this.loadingView,
    @required this.emptyView,
  }) : super(key: key);

  Widget _buildBody(BuildContext context) {
    if (model.isLoading) return loadingView;
    if (model.error != null) return errorView;
    if (model.isEmpty) return emptyView;
    return builder(context, model.data);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _buildBody(context),
    );
  }
}

class SimpleListView<T> extends StatelessWidget {
  final SimpleListViewModel<T> model;
  final Widget Function(BuildContext, T) itemBuilder;
  final Widget Function(BuildContext, int) separatorBuilder;
  final Widget errorView;
  final Widget loadingView;
  final Widget emptyView;
  final EdgeInsets padding;
  final bool shrinkWrap;
  final ScrollPhysics physics;

  const SimpleListView({
    Key key,
    @required this.model,
    @required this.itemBuilder,
    @required this.errorView,
    @required this.loadingView,
    @required this.emptyView,
    this.padding,
    this.separatorBuilder,
    this.shrinkWrap = false,
    this.physics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyErrorLoadingView<List<T>>(
      model: model,
      emptyView: emptyView,
      errorView: errorView,
      loadingView: loadingView,
      builder: (context, data) {
        return ListView.separated(
          padding: padding,
          shrinkWrap: shrinkWrap,
          itemBuilder: (context, index) {
            return itemBuilder(context, data[index]);
          },
          physics: physics,
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) {
            return this.separatorBuilder?.call(context, index) ?? Container();
          },
        );
      },
    );
  }
}

class SimpleGridView<T> extends StatelessWidget {
  final SimpleListViewModel<T> model;
  final Widget Function(BuildContext, T) itemBuilder;
  final Widget Function(BuildContext, int) separatorBuilder;
  final Widget errorView;
  final Widget loadingView;
  final Widget emptyView;
  final EdgeInsets padding;
  final bool shrinkWrap;
  final ScrollPhysics physics;
  final int maxCrossAxisExtent;

  const SimpleGridView({
    Key key,
    @required this.model,
    @required this.itemBuilder,
    @required this.errorView,
    @required this.loadingView,
    @required this.emptyView,
    this.padding,
    this.separatorBuilder,
    this.shrinkWrap = false,
    this.physics,
    this.maxCrossAxisExtent = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyErrorLoadingView<List<T>>(
      model: model,
      emptyView: emptyView,
      errorView: errorView,
      loadingView: loadingView,
      builder: (context, data) {
        return GridView.builder(
          padding: padding,
          shrinkWrap: shrinkWrap,
          physics: physics,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return itemBuilder(context, data[index]);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: maxCrossAxisExtent,
              childAspectRatio: 25 / 35,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20),
        );
      },
    );
  }
}

class PaginatedDataTableView<T extends PaginatedDataTableViewModel>
    extends StatelessWidget {
  final T viewModel;
  final List<DataColumn> columns;
  final List<String> filters;
  final DataTableSource source;
  final String headerTitle;
  final String hint;
  final void Function(String filter) onFilterChanged;
  final void Function(String filter) onSearchFilterChanged;
  final void Function(String text) onSearch;
  final void Function(Object entity) onAction1;
  final void Function(Object entity) onAction2;
  final void Function(Object entity) onAction3;
  final void Function(Object entity) onAction4;

  const PaginatedDataTableView(
      {this.columns,
      this.filters,
      this.source,
      this.headerTitle,
      this.hint,
      this.viewModel,
      this.onFilterChanged,
      this.onSearchFilterChanged,
      this.onSearch,
      this.onAction1,
      this.onAction2,
      this.onAction3,
      this.onAction4,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isLoading)
      return Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: Center(child: MyLoadingView()));
    if (viewModel.error != null)
      return Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: Center(child: EmptyErrorView.defaultError()));
    /*   if (viewModel.isEmpty)
      return Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: Center(child: EmptyErrorView.defaultEmpty()));*/
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        margin: 20.allPadding,
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: PaginatedDataTable(
            dataRowHeight: 60,
            header: Text(headerTitle),
            actions: [
              Container(
                width: 20,
                height: 20,
                child: viewModel.isPerformingQuery
                    ? CircularProgressIndicator()
                    : Container(
                        height: 0,
                        width: 0,
                      ),
              ),
              BorderTextField(
                hintText: 'Search',
                width: 300,
                height: 38,
                onChanged: onSearch,
              ),
              MyDropdown(
                onChanged: onFilterChanged,
                currentItem: viewModel.listFilter,
                items: filters,
                width: 100,
                hint: hint,
              )
            ],
            rowsPerPage: 10,
            columns: columns,
            source: source,
          ),
        ),
      ),
    );
  }
}
