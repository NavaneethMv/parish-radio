import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class RadioController extends GetxController {
  var radioFreq = '89.6'.obs;
  var radioName = 'Radio For You'.obs;
  RxInt selectedIndex = 0.obs;
  final String stationURL = "https://mediaserv33.live-streams.nl:8034/live";
  final AudioPlayer _audioPlayer = AudioPlayer();
  var isPlaying = false.obs;
  var isBuffering = false.obs;

  @override
  void onInit() {
    super.onInit();
    _audioPlayer.setUrl(stationURL);

    _audioPlayer.playbackEventStream.listen((state) {
      isBuffering.value = state.processingState == ProcessingState.buffering ||
          state.processingState == ProcessingState.loading;
    });
  }

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  void toggleRadio() async {
    if (isPlaying.value) {
      isPlaying.value = false;
      await _audioPlayer.pause();
    } else {
      isPlaying.value = true;
      await _audioPlayer.play();
    }
  }

  @override
  void onClose() {
    _audioPlayer.dispose();
    super.onClose();
  }
}
