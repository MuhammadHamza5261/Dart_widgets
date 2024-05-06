import 'package:flutter/material.dart';
class TabbedAppBar extends StatefulWidget {
  const TabbedAppBar({super.key});

  @override
  State<TabbedAppBar> createState() => _TabbedAppBarState();
}

class _TabbedAppBarState extends State<TabbedAppBar> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text('Tabbar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1',),
              Tab(text: 'Tab 2',),
              Tab(text: 'Tab 3',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Page 1',style: TextStyle(fontSize: 12),),
            ),
            Center(
              child: Text('Page 1',style: TextStyle(fontSize: 12),),
            ),
            Center(
              child: Text('Page 1',style: TextStyle(fontSize: 12),),
            ),
          ],
        ),
      ),
  );
}
