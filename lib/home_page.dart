import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawers'),
      ),
      body: const Center(
        child: Text('Home Page!'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: const Text('Index'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.account_balance),
                    title: Text("Profile Kependudukan"),
                    children: [
                      ListTile(
                        title: const Text('Item 1'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Item 2'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.signal_cellular_alt_outlined),
                    title: const Text('Pelaporan AdminDuk'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: const Text('Pelayanan'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.note_alt),
                    title: Text("Kepemilikan Akte"),
                    children: [
                      ListTile(
                        title: const Text('Item 1'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Item 2'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.eco_outlined),
                    title: Text("Karakteristik"),
                    children: [
                      ListTile(
                        title: const Text('Item 1'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Item 2'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                // This align moves the children to the bottom
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    // This container holds all the children that will be aligned
                    // on the bottom and should not scroll with the above ListView
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Divider(),
                        ListTile(
                            leading: Icon(Icons.settings),
                            title: Text('Settings')),
                        ListTile(
                            leading: Icon(Icons.help),
                            title: Text('Help and Feedback'))
                      ],
                    ))))
          ],
        ),
      ),
    );
  }
}
