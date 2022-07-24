import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AudioPlayerState {
  final bool? audioPlay;
  final bool? audioPause;
  AudioPlayerState({this.audioPlay, this.audioPause});
}

@immutable
class AudioPlayState extends AudioPlayerState {}

@immutable
class AudioPauseState extends AudioPlayerState {}

@immutable
class AudioLoadingState extends AudioPlayerState {}

class AudioPlayerInitialState extends AudioPlayerState {}

class AudioPlayerErrorState extends AudioPlayerState {
  final String error;

  AudioPlayerErrorState({required this.error});
}
