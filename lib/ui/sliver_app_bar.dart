import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatefulWidget {
  const SliverAppBarScreen({super.key});

  @override
  State<SliverAppBarScreen> createState() => _SliverAppBarScreenState();
}

class _SliverAppBarScreenState extends State<SliverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.black54,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Bonjour',
                textScaleFactor: 2,),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (_,int index, ){
                    return const ListTile(
                      leading: Text('1'),
                      title: Text('Flutter'),
                      trailing: Text('2b Vision Technologies'),
                    );
                  }
              ),
          ),
        ],
      ),
    );
  }
}
