import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentModel{
  int? id;
  String? name;
  String? className;
  String? fatherName;

  StudentModel({required this.id, required this.name, required this.className,this.fatherName});

}


class FutureBuilderList extends StatefulWidget {
  const FutureBuilderList({super.key});

  @override
  State<FutureBuilderList> createState() => _FutureBuilderListState();
}

class _FutureBuilderListState extends State<FutureBuilderList> {

  Future<List<StudentModel>> fetchStudent() async{

    List<StudentModel> studentList = [
      StudentModel(
        id: 1,
        name: "Muhammad Hamza",
        className: "Flutter Mobile Appp Development",
        fatherName: "",
      ),
      StudentModel(
        id: 2,
        name: "Muhammad Hamza",
        className: "Flutter Mobile Appp Development",
      ),
      StudentModel(
        id: 3,
        name: "Muhammad Hamza",
        className: "Flutter Mobile Appp Development",
      ),
      StudentModel(
        id: 4,
        name: "Muhammad Hamza",
        className: "Flutter Mobile Appp Development",
      ),
      StudentModel(
        id: 5,
        name: "Muhammad Hamza",
        className: "Flutter Mobile Appp Development",
      ),
      StudentModel(
        id: 6,
        name: "Muhammad Hamza",
        className: "Flutter Mobile Appp Development",
      ),
    ];
    return studentList;
  }

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Future Builder List'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: fetchStudent(),
                  builder: (context,snapshot){
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    }
                    else if(snapshot.hasError){
                      return Center(
                        child: Text('${snapshot.error}'),
                      );
                    }
                    else if(snapshot.connectionState == ConnectionState.done || snapshot.connectionState == ConnectionState.active){
                      final students = snapshot.data!;
                      return Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: students.length,
                            itemBuilder: (context,index){
                            return ListTile(
                              leading: Text('${index + 1}'),
                              title: Text('${students[index].name}'),
                              subtitle: Text('${students[index].name}'),
                            );
                            }
                        ),
                      );
                    }

                    else{
                      return  Text(snapshot.hasError.toString());
                    }
                  }
              ),
            ),


          ],
        ),
      ),
    );
  }
}
