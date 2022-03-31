import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ダッシュボード'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('User Info'),
            ),
            ListTile(
              title: const Text('World Ranking'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Domestic Ranking'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                '開催中のコンテスト',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                context.go('/description');
              },
              child: Container(
                width: 500,
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text('Flutter UI Challenge v0.1.0'),
                    subtitle: Text(
                        'UIデザインをコードに変換する速さを競う.\n1位には賞金1,000円分のアマギフを贈呈します.'),
                    isThreeLine: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
