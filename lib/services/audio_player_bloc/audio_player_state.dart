import 'package:flutter/foundation.dart' show immutable;
import 'package:mediate/data/data_private.dart';
import 'package:mediate/data/data_private.dart';
import 'package:mediate/models/models.dart';

@immutable
abstract class AudioPlayerState {
  final bool audioPlay;
  final bool? audioPause;
  final AudioCategory? audio;

  const AudioPlayerState({
    required this.audioPlay,
    required this.audioPause,
    this.audio,
  });
}

@immutable
class AudioPlayState extends AudioPlayerState {
  AudioPlayState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

class AudioPauseState extends AudioPlayerState {
  AudioPauseState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

@immutable
class AudioLoadingState extends AudioPlayerState {
  AudioLoadingState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

class AudioPlayerInitialState extends AudioPlayerState {
  AudioPlayerInitialState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

class AudioPlayerErrorState extends AudioPlayerState {
  final String error;

  AudioPlayerErrorState(
      {required this.error,
      required bool audioPlay,
      required bool audioPause,
      AudioCategory? audio})
      : super(audioPause: audioPause, audioPlay: audioPlay, audio: audio);
}

class AudioIsNotPlayingState extends AudioPlayState {
  AudioIsNotPlayingState(
      {required bool audioPlay, required bool audioPause, AudioCategory? audio})
      : super(audioPlay: audioPlay, audioPause: audioPause, audio: audio);
}

extension GetAudio on AudioPlayerState {
  AudioCategory? get audio {
    final cls = this;
    if (AudioPlayState is AudioPlayState) {
      return cls.audio;
    } else {
      return audio1;
    }
  }
}
