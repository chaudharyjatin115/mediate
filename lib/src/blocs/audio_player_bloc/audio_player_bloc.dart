import 'package:just_audio/just_audio.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mediate/src/blocs/audio_player_bloc/audio_player_event.dart';
import 'package:mediate/src/blocs/audio_player_bloc/audio_player_state.dart';

import '../../resources/data/data_private.dart';

class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc()
      : super(AudioPlayerInitialState(
            audio: audio1Nature, audioPause: false, audioPlay: false)) {
    on<AudioPlayEventRemote>((event, emit) async {
      try {
        audioPlayer1.pause();
        audioPlayer1.setUrl(event.audio.audioUrl);
        audioPlayer1.play();
        // print('audio playing');
        emit(AudioPlayState(
            audioPlay: true, audioPause: false, audio: event.audio));
      } on PlayerException catch (e) {
       
        emit(
          AudioPlayerErrorState(
              error: e.toString(),
              audioPause: false,
              audioPlay: false,
              audio: audio1Nature),
        );
      }
    });
    on<AudioPlayerInitialEvent>((event, emit) async {});
    on<AudioEventStop>((event, emit) async {
      try {
        audioPlayer1.pause();
      
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
