import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ranking'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(height: 1),
            itemCount: 150,
            itemBuilder: ((context, index) {
              return const ListTile(
                leading: CircleAvatar(),
                title: Text(
                  'UserName',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'points',
                  style: TextStyle(color: Colors.white30),
                ),
                trailing: Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
