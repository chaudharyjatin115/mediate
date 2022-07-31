import 'package:flutter/foundation.dart' show immutable;
import 'package:mediate/models/models.dart';

@immutable
abstract class AudioPlayerEvent {}

@immutable
class AudioPlayEventRemote implements AudioPlayerEvent {
  final AudioCategory audio;

  const AudioPlayEventRemote({
    required this.audio,
  });
}

@immutable
class AudioEventStop implements AudioPlayerEvent {
  final AudioCategory audio;
  const AudioEventStop({required this.audio});
}

class AudioPlayerInitialEvent implements AudioPlayerEvent {
  final AudioCategory audio;

  AudioPlayerInitialEvent({required this.audio});
}
