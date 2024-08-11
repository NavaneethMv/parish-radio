import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio/app/controllers/radio_controller.dart';
import 'package:radio/app/utils/color_select.dart';

class HomeScreen extends StatelessWidget {
  final RadioController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Obx(() => Text("${controller.radioName}")),
            const SizedBox(height: 30),
            Obx(() => Text("${controller.radioFreq}")),
            _playButton(context),
            const SizedBox(height: 20,),
            _recordButton(context),
          ],
        ),
        ),
      ),
    );
  }


  Widget _playButton(BuildContext context) {
    return (
      InkWell(
        onTap: () {

        },
        child: Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorSelect.secondaryColorLight
          ),
          child: const Icon(
            size: 100,
            Icons.play_arrow_rounded,
            color: ColorSelect.secondaryColor,
          ),
        ),
      )
    );
  }


  Widget _recordButton(BuildContext context) {
    return (
      InkWell(
        onTap: () {

        },
        child: Container(
          width: 36,
          height: 36,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorSelect.recordBg
          ),
          child: const Icon(
            size: 15,
            Icons.circle,
            color: ColorSelect.secondaryColor,
          ),
        ),
      )
    );
  }


  Widget _soundWaves(BuildContext context) {
    return (
      Container()
    );
  }
}
