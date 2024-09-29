import 'package:employees/model/menu_item_option.dart';
import 'package:flutter/material.dart';

class MenuItemsModel {
  static final List<MenuItemOption> itemList = [
    logOut,
  ];

  static final logOut = MenuItemOption(
    title: 'Logout',
    icon: Icons.logout_outlined,
  );
}
