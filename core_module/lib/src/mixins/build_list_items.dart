import 'package:flutter/material.dart';

mixin BuildListItemsMixin {
  List<Widget> buildListItems<T>(
    List<T> items, {
    BuildContext? context,
  });

  Widget buildItem<T>(T item, {BuildContext? context});
}
