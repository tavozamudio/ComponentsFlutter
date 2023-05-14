import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].name),
                  leading:
                      Icon(menuOptions[index].icon, color: AppTheme.primary),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //builder: (context) => const Listview1Screen());
                    //Navigator.push(context, route);
                    //Navigator.pushNamed(context, 'listview1');
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(menuOptions[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: menuOptions.length));
  }
}
