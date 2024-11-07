import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatefulWidget {
  const FutureBuilderScreen({super.key});

  @override
  State<FutureBuilderScreen> createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {


  Future<int> futureFunction() async{

    await Future.delayed(const Duration(seconds: 3));

    return 804;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: const Text('Future Builder Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [

            FutureBuilder(
                future: futureFunction(),
                builder: (context,snapshot){
                  // snap shot wo data return karta ha jo future function return karta ha
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    );
                  }
                  else if(snapshot.connectionState == ConnectionState.done || snapshot.connectionState == ConnectionState.active){
                    if(snapshot.hasError){
                      return Text(snapshot.error.toString());
                    }
                    else if(snapshot.hasData){
                      return Center(child: Text(snapshot.data.toString(),
                        style: const TextStyle(
                        fontSize: 20,
                      ),
                      )
                      );
                    }
                    else{
                      return const Text("Some thing went wrong");
                    }
                  }
                  else{
                    return Text(snapshot.connectionState.toString());
                  }

                }
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){
                  futureFunction();
                  setState(() {

                  });
                },
                child: Text('Click me')
            ),
          ],
        ),
      ),

    );
  }
}
