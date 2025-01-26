import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/feature/dashbaord/views/dashboard_view.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'core/services/get_it_service.dart';

void main() {
  setupGetit();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: DashboardView.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
