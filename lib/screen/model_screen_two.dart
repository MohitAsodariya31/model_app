// import 'package:flutter/material.dart';
// import 'package:model_app/data/app_data_two.dart';
// import 'package:model_app/model/model_data_two.dart';
//
// class ModelScreenTwo extends StatefulWidget {
//   const ModelScreenTwo({Key? key}) : super(key: key);
//
//   @override
//   State<ModelScreenTwo> createState() => _ModelScreenTwoState();
// }
//
// class _ModelScreenTwoState extends State<ModelScreenTwo> {
//   ModelDataTwo? productionModel;
//   @override
//   void initState() {
//     // TODO: implement initState
//     productionModel = ModelDataTwo.fromJson(AppDataTwo.ladieswear);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Production Data Calling'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(10)),
//             child: Column(
//               children: [
//                 Text(
//                   "Type: ${productionModel!.dress!.type}",
//                   textAlign: TextAlign.start,
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Color: ${productionModel!.dress!.color}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Size: ${productionModel!.dress!.size}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Prize: ${productionModel!.dress!.prize}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Quantity: ${productionModel!.dress!.quantity}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
//             child: Column(
//               children: [
//                 Text(
//                   "Type: ${productionModel!.saree!.type}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Color: ${productionModel!.saree!.color}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Prize: ${productionModel!.saree!.prize}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Quantity: ${productionModel!.saree!.quantity}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
//             child: Column(
//               children: [
//                 Text(
//                   "Type: ${productionModel!.western!.type}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Color: ${productionModel!.western!.color}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Prize: ${productionModel!.western!.prize}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "Quantity: ${productionModel!.western!.quantity}",
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
