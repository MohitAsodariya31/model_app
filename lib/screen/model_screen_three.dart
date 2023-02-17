import 'package:flutter/material.dart';
import 'package:model_app/data/app_data_three.dart';
import 'package:model_app/model/model_data_three.dart';

class ModelScreenThree extends StatefulWidget {
  const ModelScreenThree({Key? key}) : super(key: key);

  @override
  State<ModelScreenThree> createState() => _ModelScreenThreeState();
}

class _ModelScreenThreeState extends State<ModelScreenThree> {
  ModelDataThree? modelData;

  @override
  void initState() {
    // TODO: implement initState
    modelData = ModelDataThree.fromJson(AppDataThree.modelData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model Screen"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Class Name: ${modelData!.classCarData!.carlist![0].carName}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'stu_id: ${modelData!.classCarData!.carlist![0].carId}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'stu_mo_num: ${modelData!.classCarData!.carlist![0].carModelNumber}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'bike_list: ${modelData!.classBikeData!.bikelist![0].carName}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
