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

  const AudioEventStop();
}

class AudioPlayerInitialEvent implements AudioPlayerEvent {
  final AudioCategory audio;

  AudioPlayerInitialEvent({required this.audio});
}
