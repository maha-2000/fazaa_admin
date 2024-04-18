import 'package:admin_panel/constant.dart';
import 'package:admin_panel/notices_page.dart';
import 'package:admin_panel/setting_page.dart';
import 'package:admin_panel/tenants_page.dart';
import 'package:admin_panel/units_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dash_page.dart';

enum SideBarItem {
  dashboard(
      value: 'الملف الشخصي', iconData: Icons.edit_note, body: DashboardScreen()),
  units(value: 'البلاغات', iconData: Icons.report, body: UnitsScreen()),
  tenants(value: 'التبرعات', iconData: Icons.handshake, body: TenantsScreen()),
  notices(value: 'الإرشادات', iconData: Icons.integration_instructions, body: NoticesScreen()),
  settings(value: 'الضبط', iconData: Icons.settings, body: SettingsScreen());

  const SideBarItem(
      {required this.value, required this.iconData, required this.body});
  final String value;
  final IconData iconData;
  final Widget body;
}

final sideBarItemProvider =
    StateProvider<SideBarItem>((ref) => SideBarItem.dashboard);

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  SideBarItem getSideBarItem(AdminMenuItem item) {
    for (var value in SideBarItem.values) {
      if (item.route == value.name) {
        return value;
      }
    }
    return SideBarItem.dashboard;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sideBarItem = ref.watch(sideBarItemProvider);

    return AdminScaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text('لوحة التحكم'),
        ),
        sideBar: SideBar(
            activeBackgroundColor: Colors.white,
            onSelected: (item) => ref.read(sideBarItemProvider.notifier).update(
                  (state) => getSideBarItem(item),
                ),
            items: SideBarItem.values
                .map(
                  (e) => AdminMenuItem(
                      title: e.value, icon: e.iconData, route: e.name),
                )
                .toList(),
            selectedRoute: sideBarItem.name),
        body: sideBarItem.body);
  }
}








