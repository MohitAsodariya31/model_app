import 'package:flutter/material.dart';
import 'package:model_app/model/model_data_one.dart';

import '../data/app_data_one.dart';

class CommonModalScreen extends StatefulWidget {
  const CommonModalScreen({Key? key}) : super(key: key);

  @override
  State<CommonModalScreen> createState() => _CommonModalScreenState();
}

class _CommonModalScreenState extends State<CommonModalScreen> {
  ModelDataOne? commonModel;

  @override
  void initState() {
    commonModel = ModelDataOne.fromJson(AppDataOne.listData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TATA CAR "),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "company_name: ${commonModel!.companyname!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "founder_name: ${commonModel!.foundername!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "ceo_name: ${commonModel!.ceoname!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            Expanded(
              child: ListView.separated(
                itemCount: commonModel!.carlist!.length,
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "car_name: ${commonModel!.carlist![index].carname}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "price: ${commonModel!.carlist![index].price}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "mileage: ${commonModel!.carlist![index].mileage}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "engine: ${commonModel!.carlist![index].engine}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "safety: ${commonModel!.carlist![index].safety}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "fuel_Type: ${commonModel!.carlist![index].fuelType}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "transmission: ${commonModel!.carlist![index].transmission}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "seatingCapacity: ${commonModel!.carlist![index].seatingCapacity}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
