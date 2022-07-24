import 'package:just_audio/just_audio.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mediate/services/audio_player_bloc/audio_player_event.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_state.dart';

class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc() : super(AudioPlayState()) {
    on<AudioPlayEventRemote>((event, emit) async {
      emit(AudioLoadingState());
      final audioPlayer = AudioPlayer();
      try {
        audioPlayer.setUrl(event.audioUrl);
        audioPlayer.play();
        emit(AudioPlayState());
      } catch (e) {
        emit(AudioPlayerErrorState(error: e.toString()));
      }
    });
    on<AudioPlayerInitialEvent>((event, emit) async {});
  }
}
