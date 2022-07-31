import 'package:just_audio/just_audio.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/data/data_private.dart';

import 'package:mediate/services/audio_player_bloc/audio_player_event.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_state.dart';

class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc()
      : super(AudioPlayerInitialState(
            audio: audio1, audioPause: false, audioPlay: false)) {
    on<AudioPlayEventRemote>((event, emit) async {
      try {
        audioPlayer1.setUrl(event.audio.audioUrl!);
        audioPlayer1.play();
        print('audio playing');
        emit(AudioPlayState(
            audioPlay: true, audioPause: false, audio: event.audio));
      } catch (e) {
        emit(AudioPlayerErrorState(
            error: e.toString(),
            audioPause: false,
            audioPlay: false,
            audio: audio1));
      }
    });
    on<AudioPlayerInitialEvent>((event, emit) async {
      emit(AudioLoadingState(
          audioPlay: false, audioPause: false, audio: audio1));
    });
    on<AudioEventStop>((event, emit) async {
      try {
        audioPlayer1.pause();
        print('audioPause');
        emit(AudioPauseState(
          audioPause: true,
          audioPlay: false,
          audio: event.audio,
        ));
      } catch (e) {
        emit(AudioPlayerErrorState(
            error: e.toString(),
            audioPlay: false,
            audioPause: true,
            audio: event.audio));
      }
    });
  }
}

final audioPlayer1 = AudioPlayer();
