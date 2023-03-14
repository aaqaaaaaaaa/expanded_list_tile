import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExpandedListTile(),
    );
  }
}

class ExpandedListTile extends StatefulWidget {
  const ExpandedListTile({Key? key}) : super(key: key);

  @override
  _ExpandedListTileState createState() => _ExpandedListTileState();
}

class _ExpandedListTileState extends State<ExpandedListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(child: Card()),
          Container(
            child: ExpansionTile(
              title: const Text(
                'Animals',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              children: [
                ListTile(
                  title: const Text('Animals 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Animals 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Animals 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Animals 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Animals 1'),
                  onTap: () {},
                ),
              ],
              onExpansionChanged: (isExpandedChanged) {
                print('Expanded: $isExpandedChanged');
              },
            ),
          ),
          Expanded(child: Card()),

        ],
      ),
    );
  }

  Future<VoidCallback> onTap() async {
    return onTap();
    debugPrint('Tr\rue');
  }
}
