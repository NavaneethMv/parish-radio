import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio/app/controllers/radio_controller.dart';
import 'package:radio/app/utils/color_select.dart';
import 'package:radio/app/views/widgets/drawer.dart';
import 'package:radio/app/views/widgets/soundwave.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  final RadioController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: RadioDrawer(),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Obx(() => Text(
                      controller.radioName.value,
                      style: Theme.of(context).textTheme.titleMedium,
                    )),
              ),
              const SizedBox(height: 5),
              Center(
                child: Obx(() => Text(
                      controller.radioFreq.value,
                      style: Theme.of(context).textTheme.headlineLarge,
                    )),
              ),
              const SoundWave(),
              const SizedBox(
                height: 10,
              ),
              _playButton(context),
              const SizedBox(
                height: 20,
              ),
              // _recordButton(context),
            ],
          ),
        )),
      ),
    );
  }

  Widget _playButton(BuildContext context) {
    return Obx(() => InkWell(
          onTap: controller.toggleRadio,
          child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorSelect.secondaryColorLight,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (controller.isBuffering.value)
                  const SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        ColorSelect.secondaryColor,
                      ),
                      strokeWidth: 4.0,
                    ),
                  ),
                // Play/Pause Icon
                Icon(
                  controller.isPlaying.value
                      ? Icons.pause_rounded
                      : Icons.play_arrow_rounded,
                  size: 100,
                  color: ColorSelect.secondaryColor,
                ),
              ],
            ),
          ),
        ));
  }

  // ignore: unused_element
  Widget _recordButton(BuildContext context) {
    return (InkWell(
      onTap: () {},
      child: Container(
        width: 36,
        height: 36,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: ColorSelect.recordBg),
        child: const Icon(
          size: 15,
          Icons.circle,
          color: ColorSelect.secondaryColor,
        ),
      ),
    ));
  }
}
