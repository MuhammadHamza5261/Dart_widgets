import 'package:flutter/material.dart';

class ShowDialogScreen extends StatefulWidget {
  const ShowDialogScreen({super.key});

  @override
  State<ShowDialogScreen> createState() => _ShowDialogScreenState();
}

class _ShowDialogScreenState extends State<ShowDialogScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Show Dialog'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: SizedBox(
          width: width*0.4,
          height: height*0.065,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.pink.shade100,
            ),
              onPressed: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return const Dialog(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomListTile(
                              title: 'Muhammad Hamza',
                              leading: '1',
                              trailing: 'Flutter Developer',
                          ),
                          CustomListTile(
                              title: 'Hafiz Bilal',
                              leading: '2',
                              trailing: 'React Native Developer',
                          ),
                          CustomListTile(
                              title: 'Numan Amanat',
                              leading: '3',
                              trailing: 'Php Developer',
                          ),


                        ],

                      ),


                    );
                  },
              );
              },
              child: const Text(
                'Show Dialog',
                style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),)
          ),
        ),
      ),
    );
  }
}


class CustomListTile extends StatefulWidget {
  //create a variable in custom class
  final String title;
  final String leading;
  final String trailing;

  const CustomListTile({
    required this.title,
    required this.leading,
    required this.trailing,
    super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: Text(widget.leading,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(widget.trailing,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
        ),
      ),

    );
  }
}


