import 'package:flutter/material.dart';
import 'dart:math';
import 'package:get/get.dart';
import 'package:radio/app/controllers/radio_controller.dart';
import 'package:radio/app/utils/color_select.dart';

class SoundWave extends StatefulWidget {
  const SoundWave({super.key});

  @override
  _SoundWaveState createState() => _SoundWaveState();
}

class _SoundWaveState extends State<SoundWave>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final RadioController radioController = Get.find();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    radioController.isPlaying.listen((isPlaying) {
      if (isPlaying) {
        _controller.repeat(reverse: true);
      } else {
        _controller.stop();
      }
    });

    radioController.isBuffering.listen((isBuffering) {
      if (isBuffering) {
        _controller.stop();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: SoundWavePainter(_controller.value),
          child: const SizedBox(
            width: double.infinity,
            height: 200,
          ),
        );
      },
    );
  }
}

class SoundWavePainter extends CustomPainter {
  final double value;

  SoundWavePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorSelect.secondaryColorLight.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.round;

    const barCount = 10; // Increase the number of bars
    final centerY = size.height / 2;
    final amplitude = size.height * 0.5; // Height of the wave

    for (int i = 0; i < barCount; i++) {
      final double barWidth =
          size.width / (barCount + 1); // Space bars more widely
      final double x = barWidth * (i + 1); // Position each bar

      // Create varying heights for each bar
      final double barHeight =
          amplitude * (0.5 + 0.5 * sin(value * 2 * pi + i * pi / 2));
      final double topY = centerY - barHeight / 2;
      final double bottomY = centerY + barHeight / 2;

      canvas.drawLine(Offset(x, topY), Offset(x, bottomY), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
