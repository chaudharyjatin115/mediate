import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AudioPlayerState {
  final bool audioPlay;
  final bool audioPause;
  AudioPlayerState({required this.audioPlay, required this.audioPause});
}

@immutable
class AudioPlayState extends AudioPlayerState {
  AudioPlayState({required bool audioPlay, required bool audioPause})
      : super(audioPlay: audioPlay, audioPause: audioPause);
}

class AudioPauseState extends AudioPlayerState {
  AudioPauseState({required bool audioPlay, required bool audioPause})
      : super(audioPlay: audioPlay, audioPause: audioPause);
}

@immutable
class AudioLoadingState extends AudioPlayerState {
  AudioLoadingState({required bool audioPlay, required bool audioPause})
      : super(audioPlay: audioPlay, audioPause: audioPause);
}


class AudioPlayerInitialState extends AudioPlayerState {

  AudioPlayerInitialState({required bool audioPlay, required bool audioPause})
      : super(audioPlay: audioPlay, audioPause: audioPause);
}

class AudioPlayerErrorState extends AudioPlayerState {
  final String error;

  AudioPlayerErrorState(
      {required this.error, required bool audioPlay, required bool audioPause})
      : super(audioPause: audioPause, audioPlay: audioPlay);
}

class AudioIsNotPlayingState extends AudioPlayState {
  AudioIsNotPlayingState({required bool audioPlay, required bool audioPause})
      : super(audioPlay: audioPlay, audioPause: audioPause);

}
