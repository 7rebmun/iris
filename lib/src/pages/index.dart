import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          NavigationRail(
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.api),
                label: Text("REST"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text("Settings"),
              ),
            ],
            selectedIndex: 0,
            onDestinationSelected: (index) {},
          ),
          const VerticalDivider(thickness: 1, width: 1)
        ],
      ),
    );
  }
}
