import 'package:audioplayers/audioplayers.dart';
import 'package:cv_project_team/core/app/audio_cubit/audio_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AudioCubit extends Cubit<AudioState> {
  AudioCubit() : super(AudioInitial());
  bool isPlaying = false;
  AudioPlayer player = AudioPlayer();
  String currentAudio = '';
  Duration currentPosition = const Duration();
  Duration lengthDuration = const Duration();

  void setCurrentAudio({required String path}) {
    emit(AudioPaused());
    currentAudio = path;
    setUpAudio();
  }

  void playOrPause() {
    if (isPlaying) {
      pausePlayer();
    } else {
      playAudio(currentAudio);
    }
  }

  Future<void> playAudio(String? path) async {
    isPlaying = true;
    await player.play(AssetSource(path ?? currentAudio));
    emit(AudioPlaying());
  }

  Future<void> pausePlayer() async {
    isPlaying = false;
    await player.pause();
    emit(AudioPaused());
  }

  setUpAudio() {
    player.onPositionChanged.listen((event) {
      currentPosition = event;
      if (currentPosition.inSeconds == lengthDuration.inSeconds - 1) {
        currentPosition = Duration.zero;
        isPlaying = false;
        stopAudio();
        emit(AudioStopped());
      } else {
        emit(AudioPlaying());
      }
    });
    player.onDurationChanged.listen((event) {
      lengthDuration = event;
      emit(AudioPlaying());
    });
  }

  Future<void> stopAudio() async {
    isPlaying = false;
    await player.stop();
    emit(AudioStopped());
  }

  seekTo(int sec) {
    if (sec == lengthDuration.inSeconds) {
      currentPosition = Duration.zero;
      isPlaying = false;
      stopAudio();
      emit(AudioStopped());
    } else {
      player.seek(Duration(seconds: sec));
      emit(AudioPlaying());
    }
  }
}
