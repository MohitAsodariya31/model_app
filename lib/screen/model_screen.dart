import 'package:flutter/material.dart';
import 'package:model_app/data/app_data.dart';
import 'package:model_app/model/user_model.dart';

class ModelScreen extends StatefulWidget {
  const ModelScreen({Key? key}) : super(key: key);

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  UserModel? userModel;

  @override
  void initState() {
    // TODO: implement initState
    userModel = UserModel.fromJson(AppData.userData);
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
              'Class Name: ${userModel!.className}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemCount: userModel!.stuList!.length,
                itemBuilder: (context, index) => Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Student Name: ${userModel!.stuList![index].stdName}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Text(
                            'ID: ${userModel!.stuList![index].stdId}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Student Mo.Number: ${userModel!.stuList![index].moNum}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
