import 'package:flutter/foundation.dart' show immutable;

import 'package:mediate/src/models/models.dart';

@immutable
abstract class AudioPlayerState {
  final bool audioPlay;
  final bool? audioPause;
  final AudioCategory? audio;

  const AudioPlayerState({
    required this.audioPlay,
    required this.audioPause,
    required this.audio,
  });
}

@immutable
class AudioPlayState extends AudioPlayerState {
  const AudioPlayState(
      {required bool audioPlay,
      required bool audioPause,
      required AudioCategory audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

class AudioPauseState extends AudioPlayerState {
  const AudioPauseState(
      {required bool audioPlay,
      required bool audioPause,
      required AudioCategory audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

@immutable
class AudioLoadingState extends AudioPlayerState {
  const AudioLoadingState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

class AudioPlayerInitialState extends AudioPlayerState {
  const AudioPlayerInitialState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

class AudioPlayerErrorState extends AudioPlayerState {
  final String error;

  const AudioPlayerErrorState(
      {required this.error,
      required bool audioPlay,
      required bool audioPause,
      AudioCategory? audio})
      : super(audioPause: audioPause, audioPlay: audioPlay, audio: audio);
}

class AudioPlayerIsInPlayerScreen extends AudioPlayerState {
  const AudioPlayerIsInPlayerScreen(
      {required bool audioPlay,
      required bool? audioPause,
      required AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

extension GetAudio on AudioPlayerState {
  AudioCategory? get audio {
    final cls = this;
    if (AudioPlayState is AudioPlayState) {
      return cls.audio;
    } else {
      return null;
    }
  }
}
