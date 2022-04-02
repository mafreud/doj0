import 'package:flutter/material.dart';

import 'dashboard_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dojo'),
      ),
      drawer: const DashboardDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '1/100位',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '3000 points',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
