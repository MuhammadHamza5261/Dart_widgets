// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
//
// class InternetConnectivityScreen extends StatefulWidget {
//   const InternetConnectivityScreen({super.key});
//
//   @override
//   State<InternetConnectivityScreen> createState() => _InternetConnectivityScreenState();
// }
//
// class _InternetConnectivityScreenState extends State<InternetConnectivityScreen> {
//
//   Connectivity connectivity = Connectivity();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Internet Connectivity Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
//         child: StreamBuilder<ConnectivityResult>(
//           stream: connectivity.onConnectivityChanged,
//           builder: (context,snapshot){
//             return InternetConnectionWidget(
//               snapshot: snapshot,
//               widget: const Text("Connected"),
//             );
//           },
//
//         ),
//       ),
//     );
//   }
// }
//
// class InternetConnectionWidget extends StatelessWidget {
//   final AsyncSnapshot<ConnectivityResult> snapshot;
//   final Widget widget;
//   const InternetConnectionWidget({super.key,required this.widget, required this.snapshot});
//
//   @override
//   Widget build(BuildContext context) {
//      switch(snapshot.connectionState){
//        case ConnectionState.active:
//          final state = snapshot.data!;
//           switch(state){
//             case ConnectivityResult.none:
//               return const Center(
//                 child: Text("No Internet Connection"),
//               );
//             default: return widget;
//          }
//        default:
//          return const Text('');
//
//      }
//   }
// }
//
